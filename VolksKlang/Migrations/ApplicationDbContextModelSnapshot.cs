﻿// <auto-generated />
using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.EntityFrameworkCore.Storage.ValueConversion;
using VolksKlang.Data;

namespace VolksKlang.Migrations
{
    [DbContext(typeof(ApplicationDbContext))]
    partial class ApplicationDbContextModelSnapshot : ModelSnapshot
    {
        protected override void BuildModel(ModelBuilder modelBuilder)
        {
#pragma warning disable 612, 618
            modelBuilder
                .HasAnnotation("ProductVersion", "3.1.12")
                .HasAnnotation("Relational:MaxIdentifierLength", 64);

            modelBuilder.Entity("VolksKlang.Models.Bild", b =>
                {
                    b.Property<int>("ID")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    b.Property<byte[]>("Inhalt")
                        .HasColumnType("varbinary(4000)");

                    b.HasKey("ID");

                    b.ToTable("Bild");
                });

            modelBuilder.Entity("VolksKlang.Models.Book", b =>
                {
                    b.Property<string>("ISBN")
                        .HasColumnType("varchar(767)");

                    b.Property<string>("Author")
                        .HasColumnType("text");

                    b.Property<string>("Language")
                        .HasColumnType("text");

                    b.Property<int>("Pages")
                        .HasColumnType("int");

                    b.Property<int?>("PublisherID")
                        .HasColumnType("int");

                    b.Property<string>("Title")
                        .IsRequired()
                        .HasColumnType("text");

                    b.HasKey("ISBN");

                    b.HasIndex("PublisherID");

                    b.ToTable("Book");
                });

            modelBuilder.Entity("VolksKlang.Models.Herkunft", b =>
                {
                    b.Property<int>("ID")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    b.Property<string>("Name")
                        .HasColumnType("text");

                    b.HasKey("ID");

                    b.ToTable("Herkunft");
                });

            modelBuilder.Entity("VolksKlang.Models.Kategorie", b =>
                {
                    b.Property<int>("ID")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    b.Property<string>("Name")
                        .HasColumnType("text");

                    b.HasKey("ID");

                    b.ToTable("Kategorie");
                });

            modelBuilder.Entity("VolksKlang.Models.Objekt", b =>
                {
                    b.Property<int>("ID")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    b.Property<string>("Abmessungen")
                        .HasColumnType("text");

                    b.Property<string>("Beschreibung")
                        .HasColumnType("text");

                    b.Property<int?>("BildID")
                        .HasColumnType("int");

                    b.Property<int?>("HerkunftID")
                        .HasColumnType("int");

                    b.Property<int?>("KategorieID")
                        .HasColumnType("int");

                    b.Property<string>("Material")
                        .HasColumnType("text");

                    b.Property<string>("Objektbeschriftung")
                        .HasColumnType("text");

                    b.Property<string>("Objektbezeichnung")
                        .HasColumnType("text");

                    b.Property<int?>("StandortID")
                        .HasColumnType("int");

                    b.Property<int?>("TypID")
                        .HasColumnType("int");

                    b.Property<string>("Zustand")
                        .HasColumnType("text");

                    b.HasKey("ID");

                    b.HasIndex("BildID");

                    b.HasIndex("HerkunftID");

                    b.HasIndex("KategorieID");

                    b.HasIndex("StandortID");

                    b.HasIndex("TypID");

                    b.ToTable("Objekt");
                });

            modelBuilder.Entity("VolksKlang.Models.Publisher", b =>
                {
                    b.Property<int>("ID")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    b.Property<string>("Name")
                        .IsRequired()
                        .HasColumnType("text");

                    b.HasKey("ID");

                    b.ToTable("Publisher");
                });

            modelBuilder.Entity("VolksKlang.Models.Standort", b =>
                {
                    b.Property<int>("ID")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    b.Property<string>("Name")
                        .HasColumnType("text");

                    b.HasKey("ID");

                    b.ToTable("Standort");
                });

            modelBuilder.Entity("VolksKlang.Models.Typ", b =>
                {
                    b.Property<int>("ID")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    b.Property<string>("Name")
                        .HasColumnType("text");

                    b.HasKey("ID");

                    b.ToTable("Typ");
                });

            modelBuilder.Entity("VolksKlang.Models.Book", b =>
                {
                    b.HasOne("VolksKlang.Models.Publisher", "Publisher")
                        .WithMany("Books")
                        .HasForeignKey("PublisherID");
                });

            modelBuilder.Entity("VolksKlang.Models.Objekt", b =>
                {
                    b.HasOne("VolksKlang.Models.Bild", "Bild")
                        .WithMany()
                        .HasForeignKey("BildID");

                    b.HasOne("VolksKlang.Models.Herkunft", "Herkunft")
                        .WithMany()
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
                });
#pragma warning restore 612, 618
        }
    }
}
