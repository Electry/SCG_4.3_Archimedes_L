.class public Lcom/lenovo/scg/camera/setting/view/CurveRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "CurveRelativeLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 12
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 14
    return-void
.end method

.method private rotateView(Landroid/view/View;F)V
    .locals 1
    .param p1, "mView"    # Landroid/view/View;
    .param p2, "rotation"    # F

    .prologue
    .line 66
    instance-of v0, p1, Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 68
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    .line 69
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotY(F)V

    .line 70
    invoke-virtual {p1, p2}, Landroid/view/View;->setRotation(F)V

    .line 72
    :cond_0
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 9
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/high16 v8, 0x41200000    # 10.0f

    const/high16 v7, 0x40a00000    # 5.0f

    const/high16 v6, -0x3f600000    # -5.0f

    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 29
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 31
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/setting/view/CurveRelativeLayout;->getChildCount()I

    move-result v0

    .line 32
    .local v0, "childCount":I
    packed-switch v0, :pswitch_data_0

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 34
    :pswitch_0
    const/high16 v2, 0x41a00000    # 20.0f

    .line 35
    .local v2, "startRotation":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_0

    .line 36
    invoke-virtual {p0, v1}, Lcom/lenovo/scg/camera/setting/view/CurveRelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3, v2}, Lcom/lenovo/scg/camera/setting/view/CurveRelativeLayout;->rotateView(Landroid/view/View;F)V

    .line 37
    sub-float/2addr v2, v8

    .line 35
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 42
    .end local v1    # "i":I
    .end local v2    # "startRotation":F
    :pswitch_1
    invoke-virtual {p0, v3}, Lcom/lenovo/scg/camera/setting/view/CurveRelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/high16 v4, -0x3e900000    # -15.0f

    invoke-direct {p0, v3, v4}, Lcom/lenovo/scg/camera/setting/view/CurveRelativeLayout;->rotateView(Landroid/view/View;F)V

    .line 43
    invoke-virtual {p0, v5}, Lcom/lenovo/scg/camera/setting/view/CurveRelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3, v6}, Lcom/lenovo/scg/camera/setting/view/CurveRelativeLayout;->rotateView(Landroid/view/View;F)V

    .line 44
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/lenovo/scg/camera/setting/view/CurveRelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3, v7}, Lcom/lenovo/scg/camera/setting/view/CurveRelativeLayout;->rotateView(Landroid/view/View;F)V

    .line 45
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lcom/lenovo/scg/camera/setting/view/CurveRelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/high16 v4, 0x41700000    # 15.0f

    invoke-direct {p0, v3, v4}, Lcom/lenovo/scg/camera/setting/view/CurveRelativeLayout;->rotateView(Landroid/view/View;F)V

    goto :goto_0

    .line 49
    :pswitch_2
    invoke-virtual {p0, v3}, Lcom/lenovo/scg/camera/setting/view/CurveRelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/high16 v4, -0x3ee00000    # -10.0f

    invoke-direct {p0, v3, v4}, Lcom/lenovo/scg/camera/setting/view/CurveRelativeLayout;->rotateView(Landroid/view/View;F)V

    .line 50
    invoke-virtual {p0, v5}, Lcom/lenovo/scg/camera/setting/view/CurveRelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lcom/lenovo/scg/camera/setting/view/CurveRelativeLayout;->rotateView(Landroid/view/View;F)V

    .line 51
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/lenovo/scg/camera/setting/view/CurveRelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3, v8}, Lcom/lenovo/scg/camera/setting/view/CurveRelativeLayout;->rotateView(Landroid/view/View;F)V

    goto :goto_0

    .line 55
    :pswitch_3
    invoke-virtual {p0, v3}, Lcom/lenovo/scg/camera/setting/view/CurveRelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3, v6}, Lcom/lenovo/scg/camera/setting/view/CurveRelativeLayout;->rotateView(Landroid/view/View;F)V

    .line 56
    invoke-virtual {p0, v5}, Lcom/lenovo/scg/camera/setting/view/CurveRelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3, v7}, Lcom/lenovo/scg/camera/setting/view/CurveRelativeLayout;->rotateView(Landroid/view/View;F)V

    goto :goto_0

    .line 32
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
