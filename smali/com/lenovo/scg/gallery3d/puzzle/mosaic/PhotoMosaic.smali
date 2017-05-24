.class public abstract Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic;
.super Ljava/lang/Object;
.source "PhotoMosaic.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$PuzzleModifyListener;,
        Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$ImageNum;,
        Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$MosaicMode;
    }
.end annotation


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mCurrentMosaicMode:Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$MosaicMode;

.field protected mMosaicBitmapList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field protected mMosaicPreference:Lcom/lenovo/scg/gallery3d/puzzle/util/MosaicPreference;

.field protected mMosaicRootlayout:Landroid/widget/RelativeLayout;

.field protected mPuzzleModifyListener:Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$PuzzleModifyListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic;->mMosaicBitmapList:Ljava/util/ArrayList;

    .line 65
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic;->mContext:Landroid/content/Context;

    .line 66
    invoke-static {p1}, Lcom/lenovo/scg/gallery3d/puzzle/util/MosaicPreference;->getInstance(Landroid/content/Context;)Lcom/lenovo/scg/gallery3d/puzzle/util/MosaicPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic;->mMosaicPreference:Lcom/lenovo/scg/gallery3d/puzzle/util/MosaicPreference;

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/boxcontrol/Image;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 69
    .local p2, "mSelectImages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/boxcontrol/Image;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic;->mMosaicBitmapList:Ljava/util/ArrayList;

    .line 70
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic;->mContext:Landroid/content/Context;

    .line 71
    invoke-static {p1}, Lcom/lenovo/scg/gallery3d/puzzle/util/MosaicPreference;->getInstance(Landroid/content/Context;)Lcom/lenovo/scg/gallery3d/puzzle/util/MosaicPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic;->mMosaicPreference:Lcom/lenovo/scg/gallery3d/puzzle/util/MosaicPreference;

    .line 72
    return-void
.end method


# virtual methods
.method public abstract getFrameOrBackgroundRes()I
.end method

.method public abstract getFrameOrBackgroundResIndex()I
.end method

.method public abstract initMosaic(Landroid/widget/RelativeLayout;)V
.end method

.method public abstract obtainMosaicedPhoto()Landroid/graphics/Bitmap;
.end method

.method protected release()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 95
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic;->releaseMoasicResource()V

    .line 96
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic;->mMosaicBitmapList:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    .line 97
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic;->mMosaicBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 98
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 99
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 102
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic;->mMosaicBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 103
    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic;->mMosaicBitmapList:Ljava/util/ArrayList;

    .line 105
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic;->mContext:Landroid/content/Context;

    .line 106
    return-void
.end method

.method public abstract releaseMoasicResource()V
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 50
    return-void
.end method

.method public abstract setFrameOrBackgroundRes(I)V
.end method

.method public abstract setFrameOrBackgroundResIndex(I)V
.end method

.method public setmContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic;->mContext:Landroid/content/Context;

    .line 76
    return-void
.end method

.method public setmCurrentMosaicMode(Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$MosaicMode;)V
    .locals 0
    .param p1, "mCurrentMosaicMode"    # Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$MosaicMode;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic;->mCurrentMosaicMode:Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$MosaicMode;

    .line 84
    return-void
.end method

.method public setmMosaicBitmapList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 87
    .local p1, "mMosaicBitmapList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic;->mMosaicBitmapList:Ljava/util/ArrayList;

    .line 88
    return-void
.end method

.method public setmMosaicRootlayout(Landroid/widget/RelativeLayout;)V
    .locals 0
    .param p1, "mMosaicRootlayout"    # Landroid/widget/RelativeLayout;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic;->mMosaicRootlayout:Landroid/widget/RelativeLayout;

    .line 80
    return-void
.end method

.method public setmPuzzleModifyListener(Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$PuzzleModifyListener;)V
    .locals 0
    .param p1, "mPuzzleModifyListener"    # Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$PuzzleModifyListener;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic;->mPuzzleModifyListener:Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$PuzzleModifyListener;

    .line 92
    return-void
.end method
