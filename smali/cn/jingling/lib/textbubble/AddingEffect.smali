.class public abstract Lcn/jingling/lib/textbubble/AddingEffect;
.super Lcn/jingling/lib/textbubble/Effect;
.source "AddingEffect.java"


# static fields
.field protected static mFrame:Lcn/jingling/lib/textbubble/ImageControl;

.field protected static mImageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/jingling/lib/textbubble/ImageControl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mEvent:Lcn/jingling/lib/textbubble/PwMotion;

.field protected mGroundImage:Lcn/jingling/lib/textbubble/GroundImage;

.field protected mRelativeLayout:Landroid/widget/RelativeLayout;

.field protected mScreenControl:Lcn/jingling/lib/textbubble/ScreenControl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcn/jingling/lib/textbubble/AddingEffect;->mImageList:Ljava/util/ArrayList;

    .line 38
    const/4 v0, 0x0

    sput-object v0, Lcn/jingling/lib/textbubble/AddingEffect;->mFrame:Lcn/jingling/lib/textbubble/ImageControl;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcn/jingling/lib/textbubble/Effect;-><init>()V

    .line 23
    invoke-static {}, Lcn/jingling/lib/textbubble/ScreenControl;->getSingleton()Lcn/jingling/lib/textbubble/ScreenControl;

    move-result-object v0

    iput-object v0, p0, Lcn/jingling/lib/textbubble/AddingEffect;->mScreenControl:Lcn/jingling/lib/textbubble/ScreenControl;

    .line 24
    iget-object v0, p0, Lcn/jingling/lib/textbubble/AddingEffect;->mScreenControl:Lcn/jingling/lib/textbubble/ScreenControl;

    invoke-virtual {v0}, Lcn/jingling/lib/textbubble/ScreenControl;->getGroundImage()Lcn/jingling/lib/textbubble/GroundImage;

    move-result-object v0

    iput-object v0, p0, Lcn/jingling/lib/textbubble/AddingEffect;->mGroundImage:Lcn/jingling/lib/textbubble/GroundImage;

    .line 28
    iget-object v0, p0, Lcn/jingling/lib/textbubble/AddingEffect;->mGroundImage:Lcn/jingling/lib/textbubble/GroundImage;

    invoke-virtual {v0}, Lcn/jingling/lib/textbubble/GroundImage;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcn/jingling/lib/textbubble/AddingEffect;->mContext:Landroid/content/Context;

    .line 36
    new-instance v0, Lcn/jingling/lib/textbubble/PwMotionHigh;

    invoke-direct {v0}, Lcn/jingling/lib/textbubble/PwMotionHigh;-><init>()V

    iput-object v0, p0, Lcn/jingling/lib/textbubble/AddingEffect;->mEvent:Lcn/jingling/lib/textbubble/PwMotion;

    .line 22
    return-void
.end method


# virtual methods
.method protected clear()V
    .locals 7

    .prologue
    .line 122
    sget-object v5, Lcn/jingling/lib/textbubble/AddingEffect;->mImageList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 123
    .local v4, "size":I
    if-nez v4, :cond_0

    .line 142
    :goto_0
    return-void

    .line 126
    :cond_0
    iget-object v5, p0, Lcn/jingling/lib/textbubble/AddingEffect;->mRelativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 127
    iget-object v5, p0, Lcn/jingling/lib/textbubble/AddingEffect;->mRelativeLayout:Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcn/jingling/lib/textbubble/AddingEffect;->mGroundImage:Lcn/jingling/lib/textbubble/GroundImage;

    invoke-virtual {v6}, Lcn/jingling/lib/textbubble/GroundImage;->getImageView()Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 129
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-lt v2, v4, :cond_1

    .line 141
    sget-object v5, Lcn/jingling/lib/textbubble/AddingEffect;->mImageList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 131
    :cond_1
    :try_start_0
    sget-object v5, Lcn/jingling/lib/textbubble/AddingEffect;->mImageList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/jingling/lib/textbubble/ImageControl;

    .line 132
    .local v3, "imageControl":Lcn/jingling/lib/textbubble/ImageControl;
    invoke-virtual {v3}, Lcn/jingling/lib/textbubble/ImageControl;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 133
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v5, p0, Lcn/jingling/lib/textbubble/AddingEffect;->mGroundImage:Lcn/jingling/lib/textbubble/GroundImage;

    if-eq v3, v5, :cond_2

    .line 134
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "imageControl":Lcn/jingling/lib/textbubble/ImageControl;
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 136
    :catch_0
    move-exception v1

    .line 138
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method protected getInvertMatrix()Landroid/graphics/Matrix;
    .locals 2

    .prologue
    .line 115
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 116
    .local v0, "matrix":Landroid/graphics/Matrix;
    iget-object v1, p0, Lcn/jingling/lib/textbubble/AddingEffect;->mGroundImage:Lcn/jingling/lib/textbubble/GroundImage;

    invoke-virtual {v1}, Lcn/jingling/lib/textbubble/GroundImage;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 117
    return-object v0
.end method

.method protected merge(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v7, 0x1

    .line 92
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 93
    .local v5, "paint":Landroid/graphics/Paint;
    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 94
    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setDither(Z)V

    .line 95
    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 97
    sget-object v7, Lcn/jingling/lib/textbubble/AddingEffect;->mImageList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 98
    .local v6, "size":I
    invoke-virtual {p0}, Lcn/jingling/lib/textbubble/AddingEffect;->getInvertMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    .line 100
    .local v3, "invertMatrix":Landroid/graphics/Matrix;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v6, :cond_0

    .line 111
    return-void

    .line 102
    :cond_0
    :try_start_0
    sget-object v7, Lcn/jingling/lib/textbubble/AddingEffect;->mImageList:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/jingling/lib/textbubble/ImageControl;

    .line 103
    .local v2, "imageControl":Lcn/jingling/lib/textbubble/ImageControl;
    invoke-virtual {v2}, Lcn/jingling/lib/textbubble/ImageControl;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    .line 104
    .local v4, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v4, v3}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 105
    invoke-virtual {v2}, Lcn/jingling/lib/textbubble/ImageControl;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {p1, v7, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    .end local v2    # "imageControl":Lcn/jingling/lib/textbubble/ImageControl;
    .end local v4    # "matrix":Landroid/graphics/Matrix;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 106
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public onCancel()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 59
    iget-object v0, p0, Lcn/jingling/lib/textbubble/AddingEffect;->mScreenControl:Lcn/jingling/lib/textbubble/ScreenControl;

    invoke-virtual {v0}, Lcn/jingling/lib/textbubble/ScreenControl;->clearAddingAccessory()V

    .line 60
    iget-object v0, p0, Lcn/jingling/lib/textbubble/AddingEffect;->mScreenControl:Lcn/jingling/lib/textbubble/ScreenControl;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/jingling/lib/textbubble/ScreenControl;->setmIsAddingAccessory(Ljava/lang/Boolean;)V

    .line 61
    iget-object v0, p0, Lcn/jingling/lib/textbubble/AddingEffect;->mScreenControl:Lcn/jingling/lib/textbubble/ScreenControl;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/jingling/lib/textbubble/ScreenControl;->setmIsAddingBlush(Ljava/lang/Boolean;)V

    .line 63
    const/4 v0, 0x1

    return v0
.end method

.method public onOk()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 69
    iget-object v1, p0, Lcn/jingling/lib/textbubble/AddingEffect;->mScreenControl:Lcn/jingling/lib/textbubble/ScreenControl;

    iget-object v1, v1, Lcn/jingling/lib/textbubble/ScreenControl;->mImageControlArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 70
    iget-object v1, p0, Lcn/jingling/lib/textbubble/AddingEffect;->mScreenControl:Lcn/jingling/lib/textbubble/ScreenControl;

    invoke-virtual {v1}, Lcn/jingling/lib/textbubble/ScreenControl;->getBitmapHasAccessory()Landroid/graphics/Bitmap;

    .line 71
    iget-object v1, p0, Lcn/jingling/lib/textbubble/AddingEffect;->mScreenControl:Lcn/jingling/lib/textbubble/ScreenControl;

    invoke-virtual {v1}, Lcn/jingling/lib/textbubble/ScreenControl;->clearAddingAccessory()V

    .line 72
    iget-object v1, p0, Lcn/jingling/lib/textbubble/AddingEffect;->mScreenControl:Lcn/jingling/lib/textbubble/ScreenControl;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/jingling/lib/textbubble/ScreenControl;->setmIsAddingAccessory(Ljava/lang/Boolean;)V

    .line 73
    iget-object v1, p0, Lcn/jingling/lib/textbubble/AddingEffect;->mScreenControl:Lcn/jingling/lib/textbubble/ScreenControl;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcn/jingling/lib/textbubble/ScreenControl;->setmIsAddingBlush(Ljava/lang/Boolean;)V

    .line 74
    const/4 v0, 0x1

    .line 80
    :cond_0
    return v0
.end method

.method public perform()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 43
    iget-object v0, p0, Lcn/jingling/lib/textbubble/AddingEffect;->mGroundImage:Lcn/jingling/lib/textbubble/GroundImage;

    invoke-virtual {v0}, Lcn/jingling/lib/textbubble/GroundImage;->initializeData()Z

    .line 44
    iget-object v0, p0, Lcn/jingling/lib/textbubble/AddingEffect;->mGroundImage:Lcn/jingling/lib/textbubble/GroundImage;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/jingling/lib/textbubble/GroundImage;->setFlagZoom(Ljava/lang/Boolean;)V

    .line 45
    iget-object v0, p0, Lcn/jingling/lib/textbubble/AddingEffect;->mGroundImage:Lcn/jingling/lib/textbubble/GroundImage;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/jingling/lib/textbubble/GroundImage;->setFlagMove(Ljava/lang/Boolean;)V

    .line 54
    return-void
.end method
