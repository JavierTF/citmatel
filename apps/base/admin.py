from django.contrib import admin
from apps.base.models import Country, Entity, LogoEntity, Position, Employee, InfoEmployee, ProcessClassifier, Process, Procedure


@admin.register(Country)
class CountryAdmin(admin.ModelAdmin):
    list_display = ('name', 'acronym', 'active', )


@admin.register(Entity)
class EntityAdmin(admin.ModelAdmin):
    list_display = ('name', 'active', )


@admin.register(LogoEntity)
class LogoEntityAdmin(admin.ModelAdmin):
    list_display = ('date', 'logo1', 'logo2', )


@admin.register(Position)
class PositionAdmin(admin.ModelAdmin):
    list_display = ('name', 'active', )


class InfoEmployeeInLine(admin.TabularInline):
    model = InfoEmployee
    fields = ('is_reserve', 'init_date_reserve', 'finish_date_reserve', 'image_reserve', 'spreadsheet_reserve', )
    extra = 1


# @admin.register(ScientificCategory)
# class ScientificCategoryAdmin(admin.ModelAdmin):
#     list_display = ('name', 'prefix', 'active', )


@admin.register(Employee)
class EmployeeAdmin(admin.ModelAdmin):
    list_display = ('get_full_name', 'identification', 'position', 'image', 'active', )
    inlines = [InfoEmployeeInLine, ]

    @admin.display(description='Nombre y Apellidos')
    def get_full_name(self, obj):
        return obj.get_full_name()


@admin.register(ProcessClassifier)
class ProcessClassifierAdmin(admin.ModelAdmin):
    list_display = ('name','active', )


@admin.register(Process)
class ProcessAdmin(admin.ModelAdmin):
    list_display = ('classifier', 'name', 'order', 'abbreviation', 'responsible', 'edition', 'revision', 'active', )


@admin.register(Procedure)
class ProcedureAdmin(admin.ModelAdmin):
    list_display = ('name', 'process', 'get_abbreviation', 'edition', 'revision', 'active', )

    @admin.display(description='Código')
    def get_abbreviation(self, obj):
        return obj.get_abbreviation
