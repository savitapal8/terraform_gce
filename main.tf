provider "google" {
  user_project_override = true
  access_token          = var.access_token
}

resource "google_service_account" "default" {
  account_id   = var.service_account_id
  display_name = var.service_account_name
  project = var.project_id
}

resource "google_compute_instance" "default" {
  name         = var.compute_instance_name
  project = var.project_id
  machine_type = var.machine_type
  zone         = var.zone

  tags = ["foo", "bar"]

  boot_disk {
    initialize_params {
      image = var.machine_image
    }

    disk_encryption_key_raw = var.disk_encryption_key_raw
    kms_key_self_link = var.kms_key_self_link
  }

  // Local SSD disk
  scratch_disk {
    interface = "SCSI"
  }

  network_interface {
    network = "default"

    access_config {
      // Ephemeral public IP
    }
  }

  metadata = {
    foo = "bar"
  }

  metadata_startup_script = "echo hi > /test.txt"

  service_account {
    # Google recommends custom service accounts that have cloud-platform scope and permissions granted via IAM Roles.
    email  = google_service_account.default.email
    scopes = ["cloud-platform"]
  }
}