.class public Lcom/lenovo/scg/gallery3d/ui/UndoBarView;
.super Lcom/lenovo/scg/gallery3d/ui/GLView;
.source "UndoBarView.java"


# static fields
.field private static ANIM_TIME:J = 0x0L

.field private static final GRAY:I = -0x555556

.field private static final NO_ANIMATION:J = -0x1L

.field private static final TAG:Ljava/lang/String; = "UndoBarView"

.field private static final WHITE:I = -0x1


# instance fields
.field private mAlpha:F

.field private mAnimationStartTime:J

.field private final mBarHeight:I

.field private final mBarMargin:I

.field private final mClickRegion:I

.field private final mDeletedText:Lcom/lenovo/scg/gallery3d/glrenderer/StringTexture;

.field private final mDeletedTextMargin:I

.field private mDownOnButton:Z

.field private mFromAlpha:F

.field private final mIconMargin:I

.field private final mIconSize:I

.field private mOnClickListener:Lcom/lenovo/scg/gallery3d/ui/GLView$OnClickListener;

.field private final mPanel:Lcom/lenovo/scg/gallery3d/glrenderer/NinePatchTexture;

.field private final mSeparatorBottomMargin:I

.field private final mSeparatorRightMargin:I

.field private final mSeparatorTopMargin:I

.field private final mSeparatorWidth:I

.field private mToAlpha:F

.field private final mUndoIcon:Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

.field private final mUndoText:Lcom/lenovo/scg/gallery3d/glrenderer/StringTexture;

.field private final mUndoTextMargin:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 177
    const-wide/16 v0, 0xc8

    sput-wide v0, Lcom/lenovo/scg/gallery3d/ui/UndoBarView;->ANIM_TIME:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v3, 0xc

    const/16 v2, 0xa

    const/4 v5, 0x1

    const/16 v4, 0x10

    .line 79
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/GLView;-><init>()V

    .line 179
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/lenovo/scg/gallery3d/ui/UndoBarView;->mAnimationStartTime:J

    .line 80
    const/16 v0, 0x30

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/util/GalleryUtils;->dpToPixel(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/UndoBarView;->mBarHeight:I

    .line 81
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/util/GalleryUtils;->dpToPixel(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/UndoBarView;->mBarMargin:I

    .line 82
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/util/GalleryUtils;->dpToPixel(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/UndoBarView;->mUndoTextMargin:I

    .line 83
    const/16 v0, 0x8

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/util/GalleryUtils;->dpToPixel(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/UndoBarView;->mIconMargin:I

    .line 84
    const/16 v0, 0x20

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/util/GalleryUtils;->dpToPixel(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/UndoBarView;->mIconSize:I

    .line 85
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/util/GalleryUtils;->dpToPixel(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/UndoBarView;->mSeparatorRightMargin:I

    .line 86
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/util/GalleryUtils;->dpToPixel(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/UndoBarView;->mSeparatorTopMargin:I

    .line 87
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/util/GalleryUtils;->dpToPixel(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/UndoBarView;->mSeparatorBottomMargin:I

    .line 88
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/util/GalleryUtils;->dpToPixel(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/UndoBarView;->mSeparatorWidth:I

    .line 89
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/util/GalleryUtils;->dpToPixel(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/UndoBarView;->mDeletedTextMargin:I

    .line 91
    new-instance v0, Lcom/lenovo/scg/gallery3d/glrenderer/NinePatchTexture;

    const v1, 0x7f02078a

    invoke-direct {v0, p1, v1}, Lcom/lenovo/scg/gallery3d/glrenderer/NinePatchTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/UndoBarView;->mPanel:Lcom/lenovo/scg/gallery3d/glrenderer/NinePatchTexture;

    .line 92
    const v0, 0x7f0f0666

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/util/GalleryUtils;->dpToPixel(I)I

    move-result v1

    int-to-float v1, v1

    const v2, -0x555556

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, v5}, Lcom/lenovo/scg/gallery3d/glrenderer/StringTexture;->newInstance(Ljava/lang/String;FIFZ)Lcom/lenovo/scg/gallery3d/glrenderer/StringTexture;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/UndoBarView;->mUndoText:Lcom/lenovo/scg/gallery3d/glrenderer/StringTexture;

    .line 93
    const v0, 0x7f0f0665

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/util/GalleryUtils;->dpToPixel(I)I

    move-result v1

    int-to-float v1, v1

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/glrenderer/StringTexture;->newInstance(Ljava/lang/String;FI)Lcom/lenovo/scg/gallery3d/glrenderer/StringTexture;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/UndoBarView;->mDeletedText:Lcom/lenovo/scg/gallery3d/glrenderer/StringTexture;

    .line 94
    new-instance v0, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    const v1, 0x7f020678

    invoke-direct {v0, p1, v1}, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/UndoBarView;->mUndoIcon:Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    .line 95
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/UndoBarView;->mBarMargin:I

    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/UndoBarView;->mUndoTextMargin:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/UndoBarView;->mUndoText:Lcom/lenovo/scg/gallery3d/glrenderer/StringTexture;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/glrenderer/StringTexture;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/UndoBarView;->mIconMargin:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/UndoBarView;->mIconSize:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/UndoBarView;->mSeparatorRightMargin:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/UndoBarView;->mClickRegion:I

    .line 96
    return-void
.end method

.method private advanceAnimation()V
    .locals 10

    .prologue
    const-wide/16 v8, -0x1

    const/4 v6, 0x0

    .line 211
    iget-wide v2, p0, Lcom/lenovo/scg/gallery3d/ui/UndoBarView;->mAnimationStartTime:J

    cmp-long v1, v2, v8

    if-nez v1, :cond_0

    .line 224
    :goto_0
    return-void

    .line 213
    :cond_0
    invoke-static {}, Lcom/lenovo/scg/gallery3d/ui/AnimationTime;->get()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/lenovo/scg/gallery3d/ui/UndoBarView;->mAnimationStartTime:J

    sub-long/2addr v2, v4

    long-to-float v1, v2

    sget-wide v2, Lcom/lenovo/scg/gallery3d/ui/UndoBarView;->ANIM_TIME:J

    long-to-float v2, v2

    div-float v0, v1, v2

    .line 214
    .local v0, "delta":F
    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/UndoBarView;->mFromAlpha:F

    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/UndoBarView;->mToAlpha:F

    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/UndoBarView;->mFromAlpha:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    .end local v0    # "delta":F
    :goto_1
    add-float/2addr v1, v0

    iput v1, p0, Lcom/lenovo/scg/gallery3d/ui/UndoBarView;->mAlpha:F

    .line 215
    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/UndoBarView;->mAlpha:F

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v6, v2}, Lcom/lenovo/scg/gallery3d/common/Utils;->clamp(FFF)F

    move-result v1

    iput v1, p0, Lcom/lenovo/scg/gallery3d/ui/UndoBarView;->mAlpha:F

    .line 217
    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/UndoBarView;->mAlpha:F

    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/UndoBarView;->mToAlpha:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    .line 218
    iput-wide v8, p0, Lcom/lenovo/scg/gallery3d/ui/UndoBarView;->mAnimationStartTime:J

    .line 219
    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/UndoBarView;->mAlpha:F

    cmpl-float v1, v1, v6

    if-nez v1, :cond_1

    .line 220
    const/4 v1, 0x1

    invoke-super {p0, v1}, Lcom/lenovo/scg/gallery3d/ui/GLView;->setVisibility(I)V

    .line 223
    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/UndoBarView;->invalidate()V

    goto :goto_0

    .line 214
    .restart local v0    # "delta":F
    :cond_2
    neg-float v0, v0

    goto :goto_1
.end method

.method private static getTargetAlpha(I)F
    .locals 1
    .param p0, "visibility"    # I

    .prologue
    .line 186
    if-nez p0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private inUndoButton(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 164
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 165
    .local v2, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 166
    .local v3, "y":F
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/UndoBarView;->getWidth()I

    move-result v1

    .line 167
    .local v1, "w":I
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/UndoBarView;->getHeight()I

    move-result v0

    .line 168
    .local v0, "h":I
    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/UndoBarView;->mClickRegion:I

    sub-int v4, v1, v4

    int-to-float v4, v4

    cmpl-float v4, v2, v4

    if-ltz v4, :cond_0

    int-to-float v4, v1

    cmpg-float v4, v2, v4

    if-gez v4, :cond_0

    const/4 v4, 0x0

    cmpl-float v4, v3, v4

    if-ltz v4, :cond_0

    int-to-float v4, v0

    cmpg-float v4, v3, v4

    if-gez v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method


# virtual methods
.method public animateVisibility(I)V
    .locals 6
    .param p1, "visibility"    # I

    .prologue
    const-wide/16 v4, -0x1

    .line 198
    invoke-static {p1}, Lcom/lenovo/scg/gallery3d/ui/UndoBarView;->getTargetAlpha(I)F

    move-result v0

    .line 199
    .local v0, "target":F
    iget-wide v2, p0, Lcom/lenovo/scg/gallery3d/ui/UndoBarView;->mAnimationStartTime:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/UndoBarView;->mAlpha:F

    cmpl-float v1, v1, v0

    if-nez v1, :cond_1

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 200
    :cond_1
    iget-wide v2, p0, Lcom/lenovo/scg/gallery3d/ui/UndoBarView;->mAnimationStartTime:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/UndoBarView;->mToAlpha:F

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_0

    .line 202
    :cond_2
    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/UndoBarView;->mAlpha:F

    iput v1, p0, Lcom/lenovo/scg/gallery3d/ui/UndoBarView;->mFromAlpha:F

    .line 203
    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/UndoBarView;->mToAlpha:F

    .line 204
    invoke-static {}, Lcom/lenovo/scg/gallery3d/ui/AnimationTime;->startTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/lenovo/scg/gallery3d/ui/UndoBarView;->mAnimationStartTime:J

    .line 206
    const/4 v1, 0x0

    invoke-super {p0, v1}, Lcom/lenovo/scg/gallery3d/ui/GLView;->setVisibility(I)V

    .line 207
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/UndoBarView;->invalidate()V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthSpec"    # I
    .param p2, "heightSpec"    # I

    .prologue
    .line 104
    const/4 v0, 0x0

    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/UndoBarView;->mBarHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/gallery3d/ui/UndoBarView;->setMeasuredSize(II)V

    .line 105
    return-void
.end method

.method protected onTouch(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 143
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 159
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 145
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/ui/UndoBarView;->inUndoButton(Landroid/view/MotionEvent;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/UndoBarView;->mDownOnButton:Z

    goto :goto_0

    .line 148
    :pswitch_2
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/UndoBarView;->mDownOnButton:Z

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/UndoBarView;->mOnClickListener:Lcom/lenovo/scg/gallery3d/ui/GLView$OnClickListener;

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/ui/UndoBarView;->inUndoButton(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 150
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/UndoBarView;->mOnClickListener:Lcom/lenovo/scg/gallery3d/ui/GLView$OnClickListener;

    invoke-interface {v0, p0}, Lcom/lenovo/scg/gallery3d/ui/GLView$OnClickListener;->onClick(Lcom/lenovo/scg/gallery3d/ui/GLView;)V

    .line 152
    :cond_1
    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/ui/UndoBarView;->mDownOnButton:Z

    goto :goto_0

    .line 156
    :pswitch_3
    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/ui/UndoBarView;->mDownOnButton:Z

    goto :goto_0

    .line 143
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected render(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V
    .locals 12
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;

    .prologue
    .line 109
    invoke-super {p0, p1}, Lcom/lenovo/scg/gallery3d/ui/GLView;->render(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V

    .line 110
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/UndoBarView;->advanceAnimation()V

    .line 112
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->save(I)V

    .line 113
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/UndoBarView;->mAlpha:F

    invoke-interface {p1, v0}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->multiplyAlpha(F)V

    .line 115
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/UndoBarView;->getWidth()I

    move-result v11

    .line 116
    .local v11, "w":I
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/UndoBarView;->getHeight()I

    move-result v10

    .line 117
    .local v10, "h":I
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/UndoBarView;->mPanel:Lcom/lenovo/scg/gallery3d/glrenderer/NinePatchTexture;

    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/UndoBarView;->mBarMargin:I

    const/4 v3, 0x0

    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/UndoBarView;->mBarMargin:I

    mul-int/lit8 v1, v1, 0x2

    sub-int v4, v11, v1

    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/UndoBarView;->mBarHeight:I

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/lenovo/scg/gallery3d/glrenderer/NinePatchTexture;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;IIII)V

    .line 119
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/UndoBarView;->mBarMargin:I

    sub-int v2, v11, v0

    .line 122
    .local v2, "x":I
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/UndoBarView;->mUndoTextMargin:I

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/UndoBarView;->mUndoText:Lcom/lenovo/scg/gallery3d/glrenderer/StringTexture;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/glrenderer/StringTexture;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    sub-int/2addr v2, v0

    .line 123
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/UndoBarView;->mBarHeight:I

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/UndoBarView;->mUndoText:Lcom/lenovo/scg/gallery3d/glrenderer/StringTexture;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/glrenderer/StringTexture;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v3, v0, 0x2

    .line 124
    .local v3, "y":I
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/UndoBarView;->mUndoText:Lcom/lenovo/scg/gallery3d/glrenderer/StringTexture;

    invoke-virtual {v0, p1, v2, v3}, Lcom/lenovo/scg/gallery3d/glrenderer/StringTexture;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;II)V

    .line 126
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/UndoBarView;->mIconMargin:I

    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/UndoBarView;->mIconSize:I

    add-int/2addr v0, v1

    sub-int/2addr v2, v0

    .line 127
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/UndoBarView;->mBarHeight:I

    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/UndoBarView;->mIconSize:I

    sub-int/2addr v0, v1

    div-int/lit8 v3, v0, 0x2

    .line 128
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/UndoBarView;->mUndoIcon:Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/UndoBarView;->mIconSize:I

    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/UndoBarView;->mIconSize:I

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;IIII)V

    .line 130
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/UndoBarView;->mSeparatorRightMargin:I

    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/UndoBarView;->mSeparatorWidth:I

    add-int/2addr v0, v1

    sub-int/2addr v2, v0

    .line 131
    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/UndoBarView;->mSeparatorTopMargin:I

    .line 132
    int-to-float v5, v2

    int-to-float v6, v3

    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/UndoBarView;->mSeparatorWidth:I

    int-to-float v7, v0

    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/UndoBarView;->mBarHeight:I

    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/UndoBarView;->mSeparatorTopMargin:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/UndoBarView;->mSeparatorBottomMargin:I

    sub-int/2addr v0, v1

    int-to-float v8, v0

    const v9, -0x555556

    move-object v4, p1

    invoke-interface/range {v4 .. v9}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->fillRect(FFFFI)V

    .line 134
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/UndoBarView;->mBarMargin:I

    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/UndoBarView;->mDeletedTextMargin:I

    add-int v2, v0, v1

    .line 135
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/UndoBarView;->mBarHeight:I

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/UndoBarView;->mDeletedText:Lcom/lenovo/scg/gallery3d/glrenderer/StringTexture;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/glrenderer/StringTexture;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v3, v0, 0x2

    .line 136
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/UndoBarView;->mDeletedText:Lcom/lenovo/scg/gallery3d/glrenderer/StringTexture;

    invoke-virtual {v0, p1, v2, v3}, Lcom/lenovo/scg/gallery3d/glrenderer/StringTexture;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;II)V

    .line 138
    invoke-interface {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->restore()V

    .line 139
    return-void
.end method

.method public setOnClickListener(Lcom/lenovo/scg/gallery3d/ui/GLView$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/lenovo/scg/gallery3d/ui/GLView$OnClickListener;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/UndoBarView;->mOnClickListener:Lcom/lenovo/scg/gallery3d/ui/GLView$OnClickListener;

    .line 100
    return-void
.end method

.method public setVisibility(I)V
    .locals 2
    .param p1, "visibility"    # I

    .prologue
    .line 191
    invoke-static {p1}, Lcom/lenovo/scg/gallery3d/ui/UndoBarView;->getTargetAlpha(I)F

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/UndoBarView;->mAlpha:F

    .line 192
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/lenovo/scg/gallery3d/ui/UndoBarView;->mAnimationStartTime:J

    .line 193
    invoke-super {p0, p1}, Lcom/lenovo/scg/gallery3d/ui/GLView;->setVisibility(I)V

    .line 194
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/UndoBarView;->invalidate()V

    .line 195
    return-void
.end method
