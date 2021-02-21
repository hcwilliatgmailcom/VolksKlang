﻿// <auto-generated />
using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore.Migrations;
using Microsoft.EntityFrameworkCore.Storage.ValueConversion;
using VolksKlang.Data;

namespace VolksKlang.Migrations
{
    [DbContext(typeof(ApplicationDbContext))]
    [Migration("20210221102810_File")]
    partial class File
    {
        protected override void BuildTargetModel(ModelBuilder modelBuilder)
        {
#pragma warning disable 612, 618
            modelBuilder
                .HasAnnotation("Relational:MaxIdentifierLength", 128)
                .HasAnnotation("ProductVersion", "5.0.3")
                .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

            modelBuilder.Entity("VolksKlang.Models.AppFile", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<byte[]>("Content")
                        .HasColumnType("varbinary(max)");

                    b.Property<string>("Note")
                        .HasColumnType("nvarchar(max)");

                    b.Property<long>("Size")
                        .HasColumnType("bigint");

                    b.Property<string>("UntrustedName")
                        .HasColumnType("nvarchar(max)");

                    b.Property<DateTime>("UploadDT")
                        .HasColumnType("datetime2");

                    b.HasKey("Id");

                    b.ToTable("File");
                });

            modelBuilder.Entity("VolksKlang.Models.Bild", b =>
                {
                    b.Property<int>("ID")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<byte[]>("Inhalt")
                        .HasColumnType("varbinary(max)");

                    b.HasKey("ID");

                    b.ToTable("Bild");
                });

            modelBuilder.Entity("VolksKlang.Models.Herkunft", b =>
                {
                    b.Property<int>("ID")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<string>("Name")
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("ID");

                    b.ToTable("Herkunft");
                });

            modelBuilder.Entity("VolksKlang.Models.Kategorie", b =>
                {
                    b.Property<int>("ID")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<string>("Name")
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("ID");

                    b.ToTable("Kategorie");
                });

            modelBuilder.Entity("VolksKlang.Models.Objekt", b =>
                {
                    b.Property<int>("ID")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<string>("Abmessungen")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Beschreibung")
                        .HasColumnType("nvarchar(max)");

                    b.Property<int?>("BildID")
                        .HasColumnType("int");

                    b.Property<int?>("HerkunftID")
                        .HasColumnType("int");

                    b.Property<int?>("KategorieID")
                        .HasColumnType("int");

                    b.Property<string>("Material")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Objektbeschriftung")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Objektbezeichnung")
                        .HasColumnType("nvarchar(max)");

                    b.Property<int?>("StandortID")
                        .HasColumnType("int");

                    b.Property<int?>("TypID")
                        .HasColumnType("int");

                    b.Property<string>("Zustand")
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("ID");

                    b.HasIndex("BildID");

                    b.HasIndex("HerkunftID");

                    b.HasIndex("KategorieID");

                    b.HasIndex("StandortID");

                    b.HasIndex("TypID");

                    b.ToTable("Objekt");
                });

            modelBuilder.Entity("VolksKlang.Models.Standort", b =>
                {
                    b.Property<int>("ID")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<string>("Name")
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("ID");

                    b.ToTable("Standort");
                });

            modelBuilder.Entity("VolksKlang.Models.Typ", b =>
                {
                    b.Property<int>("ID")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<string>("Name")
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("ID");

                    b.ToTable("Typ");
                });

            modelBuilder.Entity("VolksKlang.Models.Objekt", b =>
                {
                    b.HasOne("VolksKlang.Models.Bild", "Bild")
                        .WithMany()
                        .HasForeignKey("BildID");

                    b.HasOne("VolksKlang.Models.Herkunft", "Herkunft")
                        .WithMany("Objekts")
                        .HasForeignKey("HerkunftID");

                    b.HasOne("VolksKlang.Models.Kategorie", "Kategorie")
                        .WithMany()
                        .HasForeignKey("KategorieID");

                    b.HasOne("VolksKlang.Models.Standort", "Standort")
                        .WithMany()
                        .HasForeignKey("StandortID");

                    b.HasOne("VolksKlang.Models.Typ", "Typ")
                        .WithMany()
                        .HasForeignKey("TypID");

                    b.Navigation("Bild");

                    b.Navigation("Herkunft");

                    b.Navigation("Kategorie");

                    b.Navigation("Standort");

                    b.Navigation("Typ");
                });

            modelBuilder.Entity("VolksKlang.Models.Herkunft", b =>
                {
                    b.Navigation("Objekts");
                });
#pragma warning restore 612, 618
        }
    }
}
