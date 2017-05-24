.class public Lcom/lenovo/scg/gallery3d/data/CameraShortcutImage;
.super Lcom/lenovo/scg/gallery3d/data/ActionImage;
.source "CameraShortcutImage.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraShortcutImage"


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/data/Path;Lcom/lenovo/scg/gallery3d/app/GalleryApp;)V
    .locals 1
    .param p1, "path"    # Lcom/lenovo/scg/gallery3d/data/Path;
    .param p2, "application"    # Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    .prologue
    .line 28
    const v0, 0x7f020806

    invoke-direct {p0, p1, p2, v0}, Lcom/lenovo/scg/gallery3d/data/ActionImage;-><init>(Lcom/lenovo/scg/gallery3d/data/Path;Lcom/lenovo/scg/gallery3d/app/GalleryApp;I)V

    .line 29
    return-void
.end method


# virtual methods
.method public getSupportedOperations()I
    .locals 2

    .prologue
    .line 33
    invoke-super {p0}, Lcom/lenovo/scg/gallery3d/data/ActionImage;->getSupportedOperations()I

    move-result v0

    const v1, 0x8000

    or-int/2addr v0, v1

    return v0
.end method
