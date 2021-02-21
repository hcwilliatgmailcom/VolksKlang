using System;
using Microsoft.EntityFrameworkCore.Migrations;

namespace VolksKlang.Migrations
{
    public partial class Vorlage : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<DateTime>(
                name: "Datum",
                table: "Objekt",
                type: "datetime2",
                nullable: false,
                defaultValue: new DateTime(1, 1, 1, 0, 0, 0, 0, DateTimeKind.Unspecified));

            migrationBuilder.AddColumn<int>(
                name: "Euro",
                table: "Objekt",
                type: "int",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.AddColumn<string>(
                name: "Name",
                table: "Objekt",
                type: "nvarchar(max)",
                nullable: true);

            migrationBuilder.AddColumn<bool>(
                name: "Vorlage",
                table: "Objekt",
                type: "bit",
                nullable: false,
                defaultValue: false);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "Datum",
                table: "Objekt");

            migrationBuilder.DropColumn(
                name: "Euro",
                table: "Objekt");

            migrationBuilder.DropColumn(
                name: "Name",
                table: "Objekt");

            migrationBuilder.DropColumn(
                name: "Vorlage",
                table: "Objekt");
        }
    }
}
