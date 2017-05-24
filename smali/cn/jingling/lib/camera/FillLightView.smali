.class public final Lcn/jingling/lib/camera/FillLightView;
.super Landroid/view/View;
.source "FillLightView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 21
    invoke-direct {p0}, Lcn/jingling/lib/camera/FillLightView;->init()V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    invoke-direct {p0}, Lcn/jingling/lib/camera/FillLightView;->init()V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    invoke-direct {p0}, Lcn/jingling/lib/camera/FillLightView;->init()V

    .line 32
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcn/jingling/lib/camera/FillLightView;->setBackgroundColor(I)V

    .line 36
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcn/jingling/lib/camera/FillLightView;->setVisibility(I)V

    .line 37
    return-void
.end method
