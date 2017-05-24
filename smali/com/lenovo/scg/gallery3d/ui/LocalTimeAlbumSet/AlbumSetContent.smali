.class public Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetContent;
.super Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Content;
.source "AlbumSetContent.java"


# instance fields
.field private mIndex:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Content;-><init>()V

    .line 18
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Content;-><init>()V

    .line 21
    iput p1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetContent;->mIndex:I

    .line 22
    return-void
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetContent;->mIndex:I

    return v0
.end method

.method public setIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 25
    iput p1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetContent;->mIndex:I

    .line 26
    return-void
.end method
