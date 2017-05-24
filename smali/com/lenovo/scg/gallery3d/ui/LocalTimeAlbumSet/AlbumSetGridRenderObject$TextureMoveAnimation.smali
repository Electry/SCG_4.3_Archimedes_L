.class Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetGridRenderObject$TextureMoveAnimation;
.super Lcom/lenovo/scg/gallery3d/anim/Animation;
.source "AlbumSetGridRenderObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetGridRenderObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TextureMoveAnimation"
.end annotation


# instance fields
.field private mEndOffset:F

.field private mMoveOffset:F

.field private mStartOffset:F

.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetGridRenderObject;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetGridRenderObject;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 29
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetGridRenderObject$TextureMoveAnimation;->this$0:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetGridRenderObject;

    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/anim/Animation;-><init>()V

    .line 31
    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetGridRenderObject$TextureMoveAnimation;->mMoveOffset:F

    .line 33
    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetGridRenderObject$TextureMoveAnimation;->mStartOffset:F

    .line 35
    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetGridRenderObject$TextureMoveAnimation;->mEndOffset:F

    return-void
.end method


# virtual methods
.method public getMoveOffset()F
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetGridRenderObject$TextureMoveAnimation;->mMoveOffset:F

    return v0
.end method

.method protected onCalculate(F)V
    .locals 3
    .param p1, "progress"    # F

    .prologue
    .line 50
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetGridRenderObject$TextureMoveAnimation;->mStartOffset:F

    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetGridRenderObject$TextureMoveAnimation;->mEndOffset:F

    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetGridRenderObject$TextureMoveAnimation;->mStartOffset:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetGridRenderObject$TextureMoveAnimation;->mMoveOffset:F

    .line 52
    return-void
.end method

.method public setRegion(FF)V
    .locals 0
    .param p1, "startOffset"    # F
    .param p2, "endOffset"    # F

    .prologue
    .line 59
    iput p1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetGridRenderObject$TextureMoveAnimation;->mStartOffset:F

    .line 60
    iput p2, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetGridRenderObject$TextureMoveAnimation;->mEndOffset:F

    .line 61
    return-void
.end method
