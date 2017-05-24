.class Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$AlphaView;
.super Landroid/view/View;
.source "SimpleSlidingDrawer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlphaView"
.end annotation


# static fields
.field private static final ALPHA_DEGREE:F = 0.3f

.field private static final ALPHA_MAX:I = 0xff


# instance fields
.field mAlpha:I

.field mColor:I

.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 98
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$AlphaView;->this$0:Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;

    .line 99
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 94
    iput v0, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$AlphaView;->mColor:I

    .line 96
    iput v0, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$AlphaView;->mAlpha:I

    .line 100
    return-void
.end method


# virtual methods
.method protected changeColor(I)V
    .locals 4
    .param p1, "dx"    # I

    .prologue
    const/16 v3, 0xff

    const/4 v2, 0x0

    .line 104
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$AlphaView;->this$0:Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;

    # getter for: Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->mLeftBehindViewWidth:I
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->access$000(Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;)I

    move-result v0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const v1, 0x3e99999a    # 0.3f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$AlphaView;->mAlpha:I

    .line 106
    iget v0, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$AlphaView;->mAlpha:I

    if-gez v0, :cond_1

    .line 107
    iput v2, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$AlphaView;->mAlpha:I

    .line 114
    :cond_0
    :goto_0
    iget v0, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$AlphaView;->mAlpha:I

    invoke-static {v0, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$AlphaView;->mColor:I

    .line 118
    return-void

    .line 109
    :cond_1
    iget v0, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$AlphaView;->mAlpha:I

    if-le v0, v3, :cond_0

    .line 110
    iput v3, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$AlphaView;->mAlpha:I

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 128
    iget v0, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$AlphaView;->mColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 129
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 130
    return-void
.end method

.method protected reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 121
    iput v0, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$AlphaView;->mColor:I

    .line 122
    iput v0, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$AlphaView;->mAlpha:I

    .line 123
    return-void
.end method
