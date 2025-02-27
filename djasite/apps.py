from django.contrib.admin.apps import AdminConfig


class DjaAdminConfig(AdminConfig):
    default_site = "djasite.admin.DjaAdminSite"
