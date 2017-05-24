.class Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;
.super Lcom/lenovo/scg/gallery3d/glrenderer/UploadedTexture;
.source "TileImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/ui/TileImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Tile"
.end annotation


# instance fields
.field public mDecodedTile:Landroid/graphics/Bitmap;

.field public mNext:Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;

.field public mTileLevel:I

.field public volatile mTileState:I

.field public mX:I

.field public mY:I

.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/ui/TileImageView;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/ui/TileImageView;III)V
    .locals 1
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "level"    # I

    .prologue
    .line 708
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;->this$0:Lcom/lenovo/scg/gallery3d/ui/TileImageView;

    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/glrenderer/UploadedTexture;-><init>()V

    .line 706
    const/4 v0, 0x1

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;->mTileState:I

    .line 709
    iput p2, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;->mX:I

    .line 710
    iput p3, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;->mY:I

    .line 711
    iput p4, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;->mTileLevel:I

    .line 712
    return-void
.end method


# virtual methods
.method decode()Z
    .locals 6

    .prologue
    .line 723
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;->this$0:Lcom/lenovo/scg/gallery3d/ui/TileImageView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mModel:Lcom/lenovo/scg/gallery3d/ui/TileImageView$TileSource;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->access$500(Lcom/lenovo/scg/gallery3d/ui/TileImageView;)Lcom/lenovo/scg/gallery3d/ui/TileImageView$TileSource;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;->mTileLevel:I

    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;->mX:I

    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;->mY:I

    # getter for: Lcom/lenovo/scg/gallery3d/ui/TileImageView;->sTileSize:I
    invoke-static {}, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->access$400()I

    move-result v5

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/lenovo/scg/gallery3d/ui/TileImageView$TileSource;->getTile(IIII)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/data/DecodeUtils;->ensureGLCompatibleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;->mDecodedTile:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 727
    :goto_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;->mDecodedTile:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_1
    return v1

    .line 724
    :catch_0
    move-exception v0

    .line 725
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "TileImageView"

    const-string v2, "fail to decode tile"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 727
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_0
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getParentTile()Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;
    .locals 5

    .prologue
    .line 768
    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;->mTileLevel:I

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;->this$0:Lcom/lenovo/scg/gallery3d/ui/TileImageView;

    iget v4, v4, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mLevelCount:I

    if-ne v3, v4, :cond_0

    const/4 v3, 0x0

    .line 772
    :goto_0
    return-object v3

    .line 769
    :cond_0
    # getter for: Lcom/lenovo/scg/gallery3d/ui/TileImageView;->sTileSize:I
    invoke-static {}, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->access$400()I

    move-result v3

    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;->mTileLevel:I

    add-int/lit8 v4, v4, 0x1

    shl-int v0, v3, v4

    .line 770
    .local v0, "size":I
    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;->mX:I

    div-int/2addr v3, v0

    mul-int v1, v0, v3

    .line 771
    .local v1, "x":I
    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;->mY:I

    div-int/2addr v3, v0

    mul-int v2, v0, v3

    .line 772
    .local v2, "y":I
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;->this$0:Lcom/lenovo/scg/gallery3d/ui/TileImageView;

    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;->mTileLevel:I

    add-int/lit8 v4, v4, 0x1

    # invokes: Lcom/lenovo/scg/gallery3d/ui/TileImageView;->getTile(III)Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;
    invoke-static {v3, v1, v2, v4}, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->access$600(Lcom/lenovo/scg/gallery3d/ui/TileImageView;III)Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;

    move-result-object v3

    goto :goto_0
.end method

.method public getTextureHeight()I
    .locals 1

    .prologue
    .line 757
    # getter for: Lcom/lenovo/scg/gallery3d/ui/TileImageView;->sTileSize:I
    invoke-static {}, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->access$400()I

    move-result v0

    return v0
.end method

.method public getTextureWidth()I
    .locals 1

    .prologue
    .line 752
    # getter for: Lcom/lenovo/scg/gallery3d/ui/TileImageView;->sTileSize:I
    invoke-static {}, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->access$400()I

    move-result v0

    return v0
.end method

.method protected onFreeBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 716
    invoke-static {}, Lcom/lenovo/scg/photos/data/GalleryBitmapPool;->getInstance()Lcom/lenovo/scg/photos/data/GalleryBitmapPool;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/photos/data/GalleryBitmapPool;->put(Landroid/graphics/Bitmap;)Z

    .line 717
    return-void
.end method

.method protected onGetBitmap()Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 732
    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;->mTileState:I

    const/16 v5, 0x8

    if-ne v3, v5, :cond_0

    move v3, v4

    :goto_0
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/common/Utils;->assertTrue(Z)V

    .line 736
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;->this$0:Lcom/lenovo/scg/gallery3d/ui/TileImageView;

    iget v3, v3, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mImageWidth:I

    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;->mX:I

    sub-int/2addr v3, v5

    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;->mTileLevel:I

    shr-int v2, v3, v5

    .line 737
    .local v2, "rightEdge":I
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;->this$0:Lcom/lenovo/scg/gallery3d/ui/TileImageView;

    iget v3, v3, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mImageHeight:I

    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;->mY:I

    sub-int/2addr v3, v5

    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;->mTileLevel:I

    shr-int v1, v3, v5

    .line 738
    .local v1, "bottomEdge":I
    # getter for: Lcom/lenovo/scg/gallery3d/ui/TileImageView;->sTileSize:I
    invoke-static {}, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->access$400()I

    move-result v3

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    # getter for: Lcom/lenovo/scg/gallery3d/ui/TileImageView;->sTileSize:I
    invoke-static {}, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->access$400()I

    move-result v5

    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {p0, v3, v5}, Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;->setSize(II)V

    .line 740
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;->mDecodedTile:Landroid/graphics/Bitmap;

    .line 741
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;->mDecodedTile:Landroid/graphics/Bitmap;

    .line 742
    iput v4, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;->mTileState:I

    .line 743
    return-object v0

    .line 732
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "bottomEdge":I
    .end local v2    # "rightEdge":I
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 777
    const-string/jumbo v0, "tile(%s, %s, %s / %s)"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;->mX:I

    # getter for: Lcom/lenovo/scg/gallery3d/ui/TileImageView;->sTileSize:I
    invoke-static {}, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->access$400()I

    move-result v4

    div-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;->mY:I

    # getter for: Lcom/lenovo/scg/gallery3d/ui/TileImageView;->sTileSize:I
    invoke-static {}, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->access$400()I

    move-result v4

    div-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;->this$0:Lcom/lenovo/scg/gallery3d/ui/TileImageView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mLevel:I
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->access$700(Lcom/lenovo/scg/gallery3d/ui/TileImageView;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;->this$0:Lcom/lenovo/scg/gallery3d/ui/TileImageView;

    iget v3, v3, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mLevelCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update(III)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "level"    # I

    .prologue
    .line 761
    iput p1, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;->mX:I

    .line 762
    iput p2, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;->mY:I

    .line 763
    iput p3, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;->mTileLevel:I

    .line 764
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;->invalidateContent()V

    .line 765
    return-void
.end method
