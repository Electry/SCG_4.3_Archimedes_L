.class public Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Content;
.super Ljava/lang/Object;
.source "Content.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createAlbumSetContent(I)Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetContent;
    .locals 1
    .param p0, "index"    # I

    .prologue
    .line 16
    new-instance v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetContent;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetContent;-><init>(I)V

    return-object v0
.end method
