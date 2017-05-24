.class public Lcom/lenovo/scg/gallery3d/weibo/galleryview/WeiboGalleryPhotoView;
.super Landroid/widget/ImageView;
.source "WeiboGalleryPhotoView.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/weibo/galleryview/IPhotoView;


# instance fields
.field private final mAttacher:Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;

.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mContext:Landroid/content/Context;

.field private mPendingScaleType:Landroid/widget/ImageView$ScaleType;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/lenovo/scg/gallery3d/weibo/galleryview/WeiboGalleryPhotoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attr"    # Landroid/util/AttributeSet;

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/lenovo/scg/gallery3d/weibo/galleryview/WeiboGalleryPhotoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attr"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 41
    new-instance v0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;-><init>(Landroid/widget/ImageView;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/WeiboGalleryPhotoView;->mAttacher:Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;

    .line 42
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/WeiboGalleryPhotoView;->mContext:Landroid/content/Context;

    .line 44
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/WeiboGalleryPhotoView;->mPendingScaleType:Landroid/widget/ImageView$ScaleType;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/WeiboGalleryPhotoView;->mPendingScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/weibo/galleryview/WeiboGalleryPhotoView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/WeiboGalleryPhotoView;->mPendingScaleType:Landroid/widget/ImageView$ScaleType;

    .line 48
    :cond_0
    return-void
.end method


# virtual methods
.method public canZoom()Z
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/WeiboGalleryPhotoView;->mAttacher:Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->canZoom()Z

    move-result v0

    return v0
.end method

.method public getDisplayRect()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/WeiboGalleryPhotoView;->mAttacher:Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->getDisplayRect()Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public getMaxScale()F
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/WeiboGalleryPhotoView;->mAttacher:Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->getMaxScale()F

    move-result v0

    return v0
.end method

.method public getMidScale()F
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/WeiboGalleryPhotoView;->mAttacher:Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->getMidScale()F

    move-result v0

    return v0
.end method

.method public getMinScale()F
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/WeiboGalleryPhotoView;->mAttacher:Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->getMinScale()F

    move-result v0

    return v0
.end method

.method public getScale()F
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/WeiboGalleryPhotoView;->mAttacher:Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->getScale()F

    move-result v0

    return v0
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/WeiboGalleryPhotoView;->mAttacher:Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    return-object v0
.end method

.method public getScreenSize()Landroid/graphics/Point;
    .locals 5

    .prologue
    .line 133
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/WeiboGalleryPhotoView;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 134
    .local v2, "wm":Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 135
    .local v0, "display":Landroid/view/Display;
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 136
    .local v1, "mPoint":Landroid/graphics/Point;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 137
    return-object v1
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/WeiboGalleryPhotoView;->mAttacher:Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->cleanup()V

    .line 197
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 198
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 204
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    :goto_0
    return-void

    .line 205
    :catch_0
    move-exception v0

    .line 206
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "WeiboGalleryPhotoView error: %s "

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 207
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setAllowParentInterceptOnEdge(Z)V
    .locals 1
    .param p1, "allow"    # Z

    .prologue
    .line 87
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/WeiboGalleryPhotoView;->mAttacher:Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->setAllowParentInterceptOnEdge(Z)V

    .line 88
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 119
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 120
    if-nez p1, :cond_0

    .line 130
    :goto_0
    return-void

    .line 123
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/weibo/galleryview/WeiboGalleryPhotoView;->getScreenSize()Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v1, v2

    .line 124
    .local v1, "screenSize":F
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v0, v1, v2

    .line 125
    .local v0, "scall":F
    cmpl-float v2, v0, v3

    if-ltz v2, :cond_1

    .line 126
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/WeiboGalleryPhotoView;->mAttacher:Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;

    add-float/2addr v3, v0

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->setMaxScallValue(F)V

    goto :goto_0

    .line 128
    :cond_1
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/WeiboGalleryPhotoView;->mAttacher:Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;

    const/high16 v3, 0x40200000    # 2.5f

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->setMaxScallValue(F)V

    goto :goto_0
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 108
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 109
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/WeiboGalleryPhotoView;->mAttacher:Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/WeiboGalleryPhotoView;->mAttacher:Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->update()V

    .line 112
    :cond_0
    return-void
.end method

.method public setImageResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 141
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 142
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/WeiboGalleryPhotoView;->mAttacher:Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/WeiboGalleryPhotoView;->mAttacher:Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->update()V

    .line 145
    :cond_0
    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 149
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 150
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/WeiboGalleryPhotoView;->mAttacher:Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/WeiboGalleryPhotoView;->mAttacher:Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->update()V

    .line 153
    :cond_0
    return-void
.end method

.method public setMaxScale(F)V
    .locals 1
    .param p1, "maxScale"    # F

    .prologue
    .line 102
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/WeiboGalleryPhotoView;->mAttacher:Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->setMaxScale(F)V

    .line 103
    return-void
.end method

.method public setMaxScallValue(F)V
    .locals 0
    .param p1, "maxScallValue"    # F

    .prologue
    .line 215
    return-void
.end method

.method public setMidScale(F)V
    .locals 1
    .param p1, "midScale"    # F

    .prologue
    .line 97
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/WeiboGalleryPhotoView;->mAttacher:Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->setMidScale(F)V

    .line 98
    return-void
.end method

.method public setMinScale(F)V
    .locals 1
    .param p1, "minScale"    # F

    .prologue
    .line 92
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/WeiboGalleryPhotoView;->mAttacher:Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->setMinScale(F)V

    .line 93
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 1
    .param p1, "l"    # Landroid/view/View$OnLongClickListener;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/WeiboGalleryPhotoView;->mAttacher:Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 163
    return-void
.end method

.method public setOnMatrixChangeListener(Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher$OnMatrixChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher$OnMatrixChangedListener;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/WeiboGalleryPhotoView;->mAttacher:Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->setOnMatrixChangeListener(Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher$OnMatrixChangedListener;)V

    .line 158
    return-void
.end method

.method public setOnPhotoTapListener(Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher$OnPhotoTapListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher$OnPhotoTapListener;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/WeiboGalleryPhotoView;->mAttacher:Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->setOnPhotoTapListener(Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher$OnPhotoTapListener;)V

    .line 168
    return-void
.end method

.method public setOnViewTapListener(Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher$OnViewTapListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher$OnViewTapListener;

    .prologue
    .line 172
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/WeiboGalleryPhotoView;->mAttacher:Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->setOnViewTapListener(Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher$OnViewTapListener;)V

    .line 173
    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 1
    .param p1, "scaleType"    # Landroid/widget/ImageView$ScaleType;

    .prologue
    .line 177
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/WeiboGalleryPhotoView;->mAttacher:Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/WeiboGalleryPhotoView;->mAttacher:Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 182
    :goto_0
    return-void

    .line 180
    :cond_0
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/WeiboGalleryPhotoView;->mPendingScaleType:Landroid/widget/ImageView$ScaleType;

    goto :goto_0
.end method

.method public setZoomable(Z)V
    .locals 1
    .param p1, "zoomable"    # Z

    .prologue
    .line 186
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/WeiboGalleryPhotoView;->mAttacher:Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->setZoomable(Z)V

    .line 187
    return-void
.end method

.method public zoomTo(FFF)V
    .locals 1
    .param p1, "scale"    # F
    .param p2, "focalX"    # F
    .param p3, "focalY"    # F

    .prologue
    .line 191
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/WeiboGalleryPhotoView;->mAttacher:Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->zoomTo(FFF)V

    .line 192
    return-void
.end method
