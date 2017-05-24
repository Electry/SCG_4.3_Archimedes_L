.class public Lcom/lenovo/scg/camera/mode/ui/StrobeModeUI;
.super Landroid/widget/FrameLayout;
.source "StrobeModeUI.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "StrobeModeUI"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mTestCount:Landroid/widget/TextView;

.field private pwTwo:Lcom/lenovo/scg/camera/ui/ProgressWheel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    iput-object p1, p0, Lcom/lenovo/scg/camera/mode/ui/StrobeModeUI;->mContext:Landroid/content/Context;

    .line 30
    return-void
.end method


# virtual methods
.method public getProgressWheel()Lcom/lenovo/scg/camera/ui/ProgressWheel;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/StrobeModeUI;->pwTwo:Lcom/lenovo/scg/camera/ui/ProgressWheel;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 34
    const v0, 0x7f1001cb

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/mode/ui/StrobeModeUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/ui/ProgressWheel;

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/StrobeModeUI;->pwTwo:Lcom/lenovo/scg/camera/ui/ProgressWheel;

    .line 35
    const v0, 0x7f1001cc

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/mode/ui/StrobeModeUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/StrobeModeUI;->mTestCount:Landroid/widget/TextView;

    .line 36
    const-string v0, "StrobeModeUI"

    const-string/jumbo v1, "onFinishInflate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    return-void
.end method

.method public setCount(I)V
    .locals 2
    .param p1, "count"    # I

    .prologue
    .line 44
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/StrobeModeUI;->mTestCount:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/StrobeModeUI;->mTestCount:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 46
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/StrobeModeUI;->mTestCount:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    :cond_0
    return-void
.end method

.method public setCountRotation(I)V
    .locals 2
    .param p1, "rotation"    # I

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/StrobeModeUI;->mTestCount:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/StrobeModeUI;->mTestCount:Landroid/widget/TextView;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setRotation(F)V

    .line 54
    :cond_0
    return-void
.end method
