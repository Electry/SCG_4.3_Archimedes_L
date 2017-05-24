.class public Lcom/lenovo/scg/camera/ui/CameraControls;
.super Lcom/lenovo/scg/camera/ui/RotatableLayout;
.source "CameraControls.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CAM_Controls"


# instance fields
.field private mBackgroundView:Landroid/view/View;

.field private mDisplayListener:Ljava/lang/Object;

.field private mIndicators:Landroid/view/View;

.field private mLastRotation:I

.field private mPreview:Landroid/view/View;

.field private mShutter:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/ui/RotatableLayout;-><init>(Landroid/content/Context;)V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/camera/ui/CameraControls;->mDisplayListener:Ljava/lang/Object;

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/camera/ui/CameraControls;->mLastRotation:I

    .line 58
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/CameraControls;->initDisplayListener()V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/lenovo/scg/camera/ui/RotatableLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/camera/ui/CameraControls;->mDisplayListener:Ljava/lang/Object;

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/camera/ui/CameraControls;->mLastRotation:I

    .line 53
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/CameraControls;->initDisplayListener()V

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/camera/ui/CameraControls;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/ui/CameraControls;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/lenovo/scg/camera/ui/CameraControls;->checkLayoutFlip()V

    return-void
.end method

.method private adjustBackground()V
    .locals 5

    .prologue
    const/high16 v4, 0x43340000    # 180.0f

    const/4 v3, 0x0

    .line 328
    invoke-direct {p0}, Lcom/lenovo/scg/camera/ui/CameraControls;->getUnifiedRotation()I

    move-result v0

    .line 330
    .local v0, "rotation":I
    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/CameraControls;->mBackgroundView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 331
    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/CameraControls;->mBackgroundView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setRotationX(F)V

    .line 332
    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/CameraControls;->mBackgroundView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setRotationY(F)V

    .line 335
    sparse-switch v0, :sswitch_data_0

    .line 345
    :goto_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/CameraControls;->mBackgroundView:Landroid/view/View;

    const v2, 0x7f020963

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 346
    return-void

    .line 337
    :sswitch_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/CameraControls;->mBackgroundView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setRotationX(F)V

    goto :goto_0

    .line 340
    :sswitch_1
    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/CameraControls;->mBackgroundView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setRotationY(F)V

    goto :goto_0

    .line 335
    nop

    :sswitch_data_0
    .sparse-switch
        0xb4 -> :sswitch_0
        0x10e -> :sswitch_1
    .end sparse-switch
.end method

.method private center(Landroid/view/View;IIIIIILandroid/graphics/Rect;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I
    .param p6, "orientation"    # I
    .param p7, "rotation"    # I
    .param p8, "result"    # Landroid/graphics/Rect;

    .prologue
    .line 189
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 190
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int v2, v3, v4

    .line 191
    .local v2, "tw":I
    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int v1, v3, v4

    .line 192
    .local v1, "th":I
    sparse-switch p7, :sswitch_data_0

    .line 222
    :goto_0
    iget v3, p8, Landroid/graphics/Rect;->left:I

    iget v4, p8, Landroid/graphics/Rect;->top:I

    iget v5, p8, Landroid/graphics/Rect;->right:I

    iget v6, p8, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 223
    return-void

    .line 195
    :sswitch_0
    add-int v3, p4, p2

    div-int/lit8 v3, v3, 0x2

    div-int/lit8 v4, v2, 0x2

    sub-int/2addr v3, v4

    iget v4, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v3, v4

    iput v3, p8, Landroid/graphics/Rect;->left:I

    .line 196
    add-int v3, p4, p2

    div-int/lit8 v3, v3, 0x2

    div-int/lit8 v4, v2, 0x2

    add-int/2addr v3, v4

    iget v4, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v3, v4

    iput v3, p8, Landroid/graphics/Rect;->right:I

    .line 197
    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int v3, p5, v3

    iput v3, p8, Landroid/graphics/Rect;->bottom:I

    .line 198
    sub-int v3, p5, v1

    iget v4, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v3, v4

    iput v3, p8, Landroid/graphics/Rect;->top:I

    goto :goto_0

    .line 202
    :sswitch_1
    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int v3, p4, v3

    iput v3, p8, Landroid/graphics/Rect;->right:I

    .line 203
    sub-int v3, p4, v2

    iget v4, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v3, v4

    iput v3, p8, Landroid/graphics/Rect;->left:I

    .line 204
    add-int v3, p5, p3

    div-int/lit8 v3, v3, 0x2

    div-int/lit8 v4, v1, 0x2

    sub-int/2addr v3, v4

    iget v4, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v3, v4

    iput v3, p8, Landroid/graphics/Rect;->top:I

    .line 205
    add-int v3, p5, p3

    div-int/lit8 v3, v3, 0x2

    div-int/lit8 v4, v1, 0x2

    add-int/2addr v3, v4

    iget v4, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v3, v4

    iput v3, p8, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 209
    :sswitch_2
    add-int v3, p4, p2

    div-int/lit8 v3, v3, 0x2

    div-int/lit8 v4, v2, 0x2

    sub-int/2addr v3, v4

    iget v4, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v3, v4

    iput v3, p8, Landroid/graphics/Rect;->left:I

    .line 210
    add-int v3, p4, p2

    div-int/lit8 v3, v3, 0x2

    div-int/lit8 v4, v2, 0x2

    add-int/2addr v3, v4

    iget v4, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v3, v4

    iput v3, p8, Landroid/graphics/Rect;->right:I

    .line 211
    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v3, p3

    iput v3, p8, Landroid/graphics/Rect;->top:I

    .line 212
    add-int v3, p3, v1

    iget v4, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v3, v4

    iput v3, p8, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 216
    :sswitch_3
    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v3, p2

    iput v3, p8, Landroid/graphics/Rect;->left:I

    .line 217
    add-int v3, p2, v2

    iget v4, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v3, v4

    iput v3, p8, Landroid/graphics/Rect;->right:I

    .line 218
    add-int v3, p5, p3

    div-int/lit8 v3, v3, 0x2

    div-int/lit8 v4, v1, 0x2

    sub-int/2addr v3, v4

    iget v4, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v3, v4

    iput v3, p8, Landroid/graphics/Rect;->top:I

    .line 219
    add-int v3, p5, p3

    div-int/lit8 v3, v3, 0x2

    div-int/lit8 v4, v1, 0x2

    add-int/2addr v3, v4

    iget v4, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v3, v4

    iput v3, p8, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_0

    .line 192
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method private center(Landroid/view/View;Landroid/graphics/Rect;I)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;
    .param p2, "other"    # Landroid/graphics/Rect;
    .param p3, "rotation"    # I

    .prologue
    .line 226
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 227
    .local v2, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v5, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int v4, v5, v6

    .line 228
    .local v4, "tw":I
    iget v5, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int v3, v5, v6

    .line 229
    .local v3, "th":I
    iget v5, p2, Landroid/graphics/Rect;->left:I

    iget v6, p2, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    div-int/lit8 v0, v5, 0x2

    .line 230
    .local v0, "cx":I
    iget v5, p2, Landroid/graphics/Rect;->top:I

    iget v6, p2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    div-int/lit8 v1, v5, 0x2

    .line 231
    .local v1, "cy":I
    div-int/lit8 v5, v4, 0x2

    sub-int v5, v0, v5

    iget v6, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v5, v6

    div-int/lit8 v6, v3, 0x2

    sub-int v6, v1, v6

    iget v7, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v6, v7

    div-int/lit8 v7, v4, 0x2

    add-int/2addr v7, v0

    iget v8, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v7, v8

    div-int/lit8 v8, v3, 0x2

    add-int/2addr v8, v1

    iget v9, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v8, v9

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/view/View;->layout(IIII)V

    .line 232
    return-void
.end method

.method private checkLayoutFlip()V
    .locals 3

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/CameraControls;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-static {v1}, Lcom/lenovo/scg/camera/CameraUtil;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v0

    .line 83
    .local v0, "currentRotation":I
    iget v1, p0, Lcom/lenovo/scg/camera/ui/CameraControls;->mLastRotation:I

    sub-int v1, v0, v1

    add-int/lit16 v1, v1, 0x168

    rem-int/lit16 v1, v1, 0x168

    const/16 v2, 0xb4

    if-ne v1, v2, :cond_0

    .line 84
    iput v0, p0, Lcom/lenovo/scg/camera/ui/CameraControls;->mLastRotation:I

    .line 85
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/CameraControls;->flipChildren()V

    .line 86
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/CameraControls;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/ViewParent;->requestLayout()V

    .line 88
    :cond_0
    return-void
.end method

.method private getUnifiedRotation()I
    .locals 4

    .prologue
    .line 179
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/CameraControls;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v1, v3, Landroid/content/res/Configuration;->orientation:I

    .line 180
    .local v1, "orientation":I
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/CameraControls;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    invoke-static {v3}, Lcom/lenovo/scg/camera/CameraUtil;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v2

    .line 181
    .local v2, "rotation":I
    rem-int/lit16 v3, v2, 0xb4

    if-nez v3, :cond_1

    const/4 v0, 0x1

    .line 182
    .local v0, "camOrientation":I
    :goto_0
    if-eq v0, v1, :cond_0

    .line 183
    add-int/lit8 v3, v2, 0x5a

    rem-int/lit16 v2, v3, 0x168

    .line 185
    .end local v2    # "rotation":I
    :cond_0
    return v2

    .line 181
    .end local v0    # "camOrientation":I
    .restart local v2    # "rotation":I
    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private toLeft(Landroid/view/View;Landroid/graphics/Rect;I)V
    .locals 11
    .param p1, "v"    # Landroid/view/View;
    .param p2, "other"    # Landroid/graphics/Rect;
    .param p3, "rotation"    # I

    .prologue
    .line 235
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 236
    .local v4, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v9, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    add-int/2addr v9, v10

    iget v10, v4, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int v8, v9, v10

    .line 237
    .local v8, "tw":I
    iget v9, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v9, v10

    iget v10, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int v7, v9, v10

    .line 238
    .local v7, "th":I
    iget v9, p2, Landroid/graphics/Rect;->left:I

    iget v10, p2, Landroid/graphics/Rect;->right:I

    add-int/2addr v9, v10

    div-int/lit8 v1, v9, 0x2

    .line 239
    .local v1, "cx":I
    iget v9, p2, Landroid/graphics/Rect;->top:I

    iget v10, p2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v9, v10

    div-int/lit8 v2, v9, 0x2

    .line 240
    .local v2, "cy":I
    const/4 v3, 0x0

    .local v3, "l":I
    const/4 v5, 0x0

    .local v5, "r":I
    const/4 v6, 0x0

    .local v6, "t":I
    const/4 v0, 0x0

    .line 241
    .local v0, "b":I
    sparse-switch p3, :sswitch_data_0

    .line 271
    :goto_0
    invoke-virtual {p1, v3, v6, v5, v0}, Landroid/view/View;->layout(IIII)V

    .line 272
    return-void

    .line 244
    :sswitch_0
    iget v9, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v9, v8

    iget v10, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int v3, v9, v10

    .line 245
    iget v9, p2, Landroid/graphics/Rect;->left:I

    iget v10, v4, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int v5, v9, v10

    .line 246
    div-int/lit8 v9, v7, 0x2

    sub-int v9, v2, v9

    iget v10, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int v6, v9, v10

    .line 247
    div-int/lit8 v9, v7, 0x2

    add-int/2addr v9, v2

    iget v10, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int v0, v9, v10

    .line 248
    goto :goto_0

    .line 251
    :sswitch_1
    div-int/lit8 v9, v8, 0x2

    sub-int v9, v1, v9

    iget v10, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int v3, v9, v10

    .line 252
    div-int/lit8 v9, v8, 0x2

    add-int/2addr v9, v1

    iget v10, v4, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int v5, v9, v10

    .line 253
    iget v9, p2, Landroid/graphics/Rect;->bottom:I

    iget v10, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int v6, v9, v10

    .line 254
    iget v9, p2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v9, v7

    iget v10, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int v0, v9, v10

    .line 255
    goto :goto_0

    .line 258
    :sswitch_2
    iget v9, p2, Landroid/graphics/Rect;->right:I

    iget v10, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int v3, v9, v10

    .line 259
    iget v9, p2, Landroid/graphics/Rect;->right:I

    add-int/2addr v9, v8

    iget v10, v4, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int v5, v9, v10

    .line 260
    div-int/lit8 v9, v7, 0x2

    sub-int v9, v2, v9

    iget v10, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int v6, v9, v10

    .line 261
    div-int/lit8 v9, v7, 0x2

    add-int/2addr v9, v2

    iget v10, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int v0, v9, v10

    .line 262
    goto :goto_0

    .line 265
    :sswitch_3
    div-int/lit8 v9, v8, 0x2

    sub-int v9, v1, v9

    iget v10, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int v3, v9, v10

    .line 266
    div-int/lit8 v9, v8, 0x2

    add-int/2addr v9, v1

    iget v10, v4, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int v5, v9, v10

    .line 267
    iget v9, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v7

    iget v10, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int v6, v9, v10

    .line 268
    iget v9, p2, Landroid/graphics/Rect;->top:I

    iget v10, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int v0, v9, v10

    goto :goto_0

    .line 241
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method private toRight(Landroid/view/View;Landroid/graphics/Rect;I)V
    .locals 11
    .param p1, "v"    # Landroid/view/View;
    .param p2, "other"    # Landroid/graphics/Rect;
    .param p3, "rotation"    # I

    .prologue
    .line 275
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 276
    .local v4, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v9, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    add-int/2addr v9, v10

    iget v10, v4, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int v8, v9, v10

    .line 277
    .local v8, "tw":I
    iget v9, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v9, v10

    iget v10, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int v7, v9, v10

    .line 278
    .local v7, "th":I
    iget v9, p2, Landroid/graphics/Rect;->left:I

    iget v10, p2, Landroid/graphics/Rect;->right:I

    add-int/2addr v9, v10

    div-int/lit8 v1, v9, 0x2

    .line 279
    .local v1, "cx":I
    iget v9, p2, Landroid/graphics/Rect;->top:I

    iget v10, p2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v9, v10

    div-int/lit8 v2, v9, 0x2

    .line 280
    .local v2, "cy":I
    const/4 v3, 0x0

    .local v3, "l":I
    const/4 v5, 0x0

    .local v5, "r":I
    const/4 v6, 0x0

    .local v6, "t":I
    const/4 v0, 0x0

    .line 281
    .local v0, "b":I
    sparse-switch p3, :sswitch_data_0

    .line 307
    :goto_0
    invoke-virtual {p1, v3, v6, v5, v0}, Landroid/view/View;->layout(IIII)V

    .line 308
    return-void

    .line 283
    :sswitch_0
    iget v9, p2, Landroid/graphics/Rect;->right:I

    iget v10, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int v3, v9, v10

    .line 284
    iget v9, p2, Landroid/graphics/Rect;->right:I

    add-int/2addr v9, v8

    iget v10, v4, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int v5, v9, v10

    .line 285
    div-int/lit8 v9, v7, 0x2

    sub-int v9, v2, v9

    iget v10, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int v6, v9, v10

    .line 286
    div-int/lit8 v9, v7, 0x2

    add-int/2addr v9, v2

    iget v10, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int v0, v9, v10

    .line 287
    goto :goto_0

    .line 289
    :sswitch_1
    div-int/lit8 v9, v8, 0x2

    sub-int v9, v1, v9

    iget v10, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int v3, v9, v10

    .line 290
    div-int/lit8 v9, v8, 0x2

    add-int/2addr v9, v1

    iget v10, v4, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int v5, v9, v10

    .line 291
    iget v9, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v7

    iget v10, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int v6, v9, v10

    .line 292
    iget v9, p2, Landroid/graphics/Rect;->top:I

    iget v10, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int v0, v9, v10

    .line 293
    goto :goto_0

    .line 295
    :sswitch_2
    iget v9, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v9, v8

    iget v10, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int v3, v9, v10

    .line 296
    iget v9, p2, Landroid/graphics/Rect;->left:I

    iget v10, v4, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int v5, v9, v10

    .line 297
    div-int/lit8 v9, v7, 0x2

    sub-int v9, v2, v9

    iget v10, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int v6, v9, v10

    .line 298
    div-int/lit8 v9, v7, 0x2

    add-int/2addr v9, v2

    iget v10, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int v0, v9, v10

    .line 299
    goto :goto_0

    .line 301
    :sswitch_3
    div-int/lit8 v9, v8, 0x2

    sub-int v9, v1, v9

    iget v10, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int v3, v9, v10

    .line 302
    div-int/lit8 v9, v8, 0x2

    add-int/2addr v9, v1

    iget v10, v4, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int v5, v9, v10

    .line 303
    iget v9, p2, Landroid/graphics/Rect;->bottom:I

    iget v10, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int v6, v9, v10

    .line 304
    iget v9, p2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v9, v7

    iget v10, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int v0, v9, v10

    goto :goto_0

    .line 281
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method private topRight(Landroid/view/View;IIII)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 312
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/CameraControls;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0900cb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 313
    .local v1, "mt":I
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/CameraControls;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0900ca

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 314
    .local v0, "mr":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int v2, p4, v2

    sub-int/2addr v2, v0

    add-int v3, p3, v1

    sub-int v4, p4, v0

    add-int v5, p3, v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 315
    return-void
.end method


# virtual methods
.method public adjustControlsToRightPosition()V
    .locals 2

    .prologue
    .line 321
    invoke-direct {p0}, Lcom/lenovo/scg/camera/ui/CameraControls;->getUnifiedRotation()I

    move-result v0

    .line 322
    .local v0, "orientation":I
    const/16 v1, 0xb4

    if-lt v0, v1, :cond_0

    .line 323
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/CameraControls;->flipChildren()V

    .line 325
    :cond_0
    return-void
.end method

.method public initDisplayListener()V
    .locals 1

    .prologue
    .line 62
    sget-boolean v0, Lcom/lenovo/scg/gallery3d/common/ApiHelper;->HAS_DISPLAY_LISTENER:Z

    if-eqz v0, :cond_0

    .line 63
    new-instance v0, Lcom/lenovo/scg/camera/ui/CameraControls$1;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/camera/ui/CameraControls$1;-><init>(Lcom/lenovo/scg/camera/ui/CameraControls;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/ui/CameraControls;->mDisplayListener:Ljava/lang/Object;

    .line 79
    :cond_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 3

    .prologue
    .line 103
    invoke-super {p0}, Lcom/lenovo/scg/camera/ui/RotatableLayout;->onAttachedToWindow()V

    .line 104
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/CameraControls;->adjustControlsToRightPosition()V

    .line 105
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/CameraControls;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/lenovo/scg/camera/CameraUtil;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/camera/ui/CameraControls;->mLastRotation:I

    .line 106
    sget-boolean v0, Lcom/lenovo/scg/gallery3d/common/ApiHelper;->HAS_DISPLAY_LISTENER:Z

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/CameraControls;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/CameraControls;->mDisplayListener:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/display/DisplayManager$DisplayListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 109
    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 121
    invoke-super {p0}, Lcom/lenovo/scg/camera/ui/RotatableLayout;->onDetachedFromWindow()V

    .line 122
    sget-boolean v0, Lcom/lenovo/scg/gallery3d/common/ApiHelper;->HAS_DISPLAY_LISTENER:Z

    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/CameraControls;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/CameraControls;->mDisplayListener:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 125
    :cond_0
    return-void
.end method

.method public onFinishInflate()V
    .locals 1

    .prologue
    .line 92
    invoke-super {p0}, Lcom/lenovo/scg/camera/ui/RotatableLayout;->onFinishInflate()V

    .line 93
    const v0, 0x7f10015e

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/ui/CameraControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/ui/CameraControls;->mBackgroundView:Landroid/view/View;

    .line 95
    const v0, 0x7f10015f

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/ui/CameraControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/ui/CameraControls;->mShutter:Landroid/view/View;

    .line 97
    const v0, 0x7f100672

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/ui/CameraControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/ui/CameraControls;->mIndicators:Landroid/view/View;

    .line 98
    const v0, 0x7f100160

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/ui/CameraControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/ui/CameraControls;->mPreview:Landroid/view/View;

    .line 99
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 29
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 129
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/ui/CameraControls;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Landroid/app/Activity;

    invoke-static {v5}, Lcom/lenovo/scg/camera/CameraUtil;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/lenovo/scg/camera/ui/CameraControls;->mLastRotation:I

    .line 130
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/ui/CameraControls;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v11, v5, Landroid/content/res/Configuration;->orientation:I

    .line 131
    .local v11, "orientation":I
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/ui/CameraControls;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0900cc

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v27

    .line 132
    .local v27, "size":I
    invoke-direct/range {p0 .. p0}, Lcom/lenovo/scg/camera/ui/CameraControls;->getUnifiedRotation()I

    move-result v12

    .line 133
    .local v12, "rotation":I
    invoke-direct/range {p0 .. p0}, Lcom/lenovo/scg/camera/ui/CameraControls;->adjustBackground()V

    .line 136
    sub-int p4, p4, p2

    .line 137
    sub-int p5, p5, p3

    .line 138
    const/16 p2, 0x0

    .line 139
    const/16 p3, 0x0

    .line 140
    const/16 v25, 0x0

    .local v25, "i":I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/ui/CameraControls;->getChildCount()I

    move-result v5

    move/from16 v0, v25

    if-ge v0, v5, :cond_0

    .line 141
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/ui/CameraControls;->getChildAt(I)Landroid/view/View;

    move-result-object v28

    .line 142
    .local v28, "v":Landroid/view/View;
    move-object/from16 v0, v28

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 140
    add-int/lit8 v25, v25, 0x1

    goto :goto_0

    .line 144
    .end local v28    # "v":Landroid/view/View;
    :cond_0
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    .line 145
    .local v13, "shutter":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lenovo/scg/camera/ui/CameraControls;->mPreview:Landroid/view/View;

    move-object/from16 v5, p0

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    invoke-direct/range {v5 .. v10}, Lcom/lenovo/scg/camera/ui/CameraControls;->topRight(Landroid/view/View;IIII)V

    .line 146
    if-lez v27, :cond_1

    .line 148
    sparse-switch v12, :sswitch_data_0

    .line 161
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lenovo/scg/camera/ui/CameraControls;->mShutter:Landroid/view/View;

    move-object/from16 v5, p0

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    invoke-direct/range {v5 .. v13}, Lcom/lenovo/scg/camera/ui/CameraControls;->center(Landroid/view/View;IIIIIILandroid/graphics/Rect;)V

    .line 162
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/camera/ui/CameraControls;->mBackgroundView:Landroid/view/View;

    new-instance v22, Landroid/graphics/Rect;

    invoke-direct/range {v22 .. v22}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v14, p0

    move/from16 v16, p2

    move/from16 v17, p3

    move/from16 v18, p4

    move/from16 v19, p5

    move/from16 v20, v11

    move/from16 v21, v12

    invoke-direct/range {v14 .. v22}, Lcom/lenovo/scg/camera/ui/CameraControls;->center(Landroid/view/View;IIIIIILandroid/graphics/Rect;)V

    .line 165
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/scg/camera/ui/CameraControls;->mIndicators:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v13, v12}, Lcom/lenovo/scg/camera/ui/CameraControls;->toRight(Landroid/view/View;Landroid/graphics/Rect;I)V

    .line 166
    const v5, 0x7f100839

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/lenovo/scg/camera/ui/CameraControls;->findViewById(I)Landroid/view/View;

    move-result-object v26

    .line 167
    .local v26, "retake":Landroid/view/View;
    if-eqz v26, :cond_2

    .line 168
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1, v13, v12}, Lcom/lenovo/scg/camera/ui/CameraControls;->center(Landroid/view/View;Landroid/graphics/Rect;I)V

    .line 169
    const v5, 0x7f10083a

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/lenovo/scg/camera/ui/CameraControls;->findViewById(I)Landroid/view/View;

    move-result-object v23

    .line 170
    .local v23, "cancel":Landroid/view/View;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v13, v12}, Lcom/lenovo/scg/camera/ui/CameraControls;->toLeft(Landroid/view/View;Landroid/graphics/Rect;I)V

    .line 171
    const v5, 0x7f100838

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/lenovo/scg/camera/ui/CameraControls;->findViewById(I)Landroid/view/View;

    move-result-object v24

    .line 172
    .local v24, "done":Landroid/view/View;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1, v13, v12}, Lcom/lenovo/scg/camera/ui/CameraControls;->toRight(Landroid/view/View;Landroid/graphics/Rect;I)V

    .line 174
    .end local v23    # "cancel":Landroid/view/View;
    .end local v24    # "done":Landroid/view/View;
    :cond_2
    return-void

    .line 151
    .end local v26    # "retake":Landroid/view/View;
    :sswitch_0
    add-int v5, p2, p4

    sub-int v5, v5, v27

    div-int/lit8 p2, v5, 0x2

    .line 152
    add-int p4, p2, v27

    .line 153
    goto :goto_1

    .line 156
    :sswitch_1
    add-int v5, p3, p5

    sub-int v5, v5, v27

    div-int/lit8 p3, v5, 0x2

    .line 157
    add-int p5, p3, v27

    goto :goto_1

    .line 148
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_0
        0x10e -> :sswitch_1
    .end sparse-switch
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 0
    .param p1, "visibility"    # I

    .prologue
    .line 113
    if-nez p1, :cond_0

    .line 115
    invoke-direct {p0}, Lcom/lenovo/scg/camera/ui/CameraControls;->checkLayoutFlip()V

    .line 117
    :cond_0
    return-void
.end method
