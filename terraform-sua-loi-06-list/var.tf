variable "user_names" {
  description = "Create IAM users"
  type        = list(string)
  default     = ["Paul", "John", "Hai"]
}

variable "emp_info" {
  description = "The employee information dictionary"
  type        = map(map(string))
  default = {
    department = {
      "Paul" = "Sales"
      "John" = "Software"
      "Hai"  = "Accounting"
    }
  }
}



