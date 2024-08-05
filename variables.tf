# General Variables

variable "region" {
  type        = string
  description = "Region"
}

variable "subnetwork_name" {
  type        = string
  description = "Subnetwork name"
}

variable "vpc_name" {
  type        = string
  description = "VPC Name"
}

variable "project_id" {
  type        = string
  description = "GCP project ID"
}

variable "subnet_cidr" {
  type        = string
  description = "CIDR range for subnet"
}

variable "prefix" {
  type        = string
  description = "CIDR range for subnet"
}

variable "service_account" {
  type        = string
  description = "GCP service Account for TF"
}

# Dataproc Variables

variable "dp_master_machine_type" {
  type        = string
  description = "Dataproc Master Machine Type"
  default     = "e2-standard-2"
}

variable "dp_worker_machine_type" {
  type        = string
  description = "Dataproc Worker Machine Type"
  default     = "e2-standard-2"
}

variable "dp_workers_count" {
  type        = number
  description = "Count of worker nodes"
  default     = 2
}

variable "dp_master_bootdisk_type" {
  type        = string
  description = "Type of machine for Master"
  default     = "pd-standard"
}

variable "dp_master_bootdisk_size" {
  type        = number
  description = "Size of master node in GB"
  default     = 50
}

variable "dp_worker_bootdisk_type" {
  type        = string
  description = "Type of machine for Worker"
  default     = "pd-standard"
}

variable "dp_worker_bootdisk_size" {
  type        = number
  description = "Size of worker node in GB"
  default     = 50
}

variable "dp_preemptible_worker" {
  type        = number
  description = "Number of pre-emptible nodes to create"
  default     = 1
}

variable "software_config" {
  type        = string
  description = "Base Image Name"
  default     = "2.0.35-debian10"
}