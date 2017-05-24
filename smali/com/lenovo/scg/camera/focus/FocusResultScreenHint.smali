.class public Lcom/lenovo/scg/camera/focus/FocusResultScreenHint;
.super Landroid/widget/RelativeLayout;
.source "FocusResultScreenHint.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FocusResultScreenHint"


# instance fields
.field private mHint:Ljava/lang/String;

.field private mHintLandLL:Landroid/widget/LinearLayout;

.field private mHintLandTV:Landroid/widget/TextView;

.field private mHintPortLL:Landroid/widget/LinearLayout;

.field private mHintPortTV:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method

.method private setPortOrLandVisible(Z)V
    .locals 3
    .param p1, "vis"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 87
    if-eqz p1, :cond_0

    .line 88
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusResultScreenHint;->mHintPortLL:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 89
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusResultScreenHint;->mHintLandLL:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 95
    :goto_0
    return-void

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusResultScreenHint;->mHintPortLL:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 92
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusResultScreenHint;->mHintLandLL:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 40
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 42
    const v0, 0x7f100171

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/focus/FocusResultScreenHint;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusResultScreenHint;->mHintLandLL:Landroid/widget/LinearLayout;

    .line 44
    const v0, 0x7f100173

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/focus/FocusResultScreenHint;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusResultScreenHint;->mHintPortLL:Landroid/widget/LinearLayout;

    .line 46
    const v0, 0x7f100172

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/focus/FocusResultScreenHint;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusResultScreenHint;->mHintLandTV:Landroid/widget/TextView;

    .line 48
    const v0, 0x7f100174

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/focus/FocusResultScreenHint;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusResultScreenHint;->mHintPortTV:Landroid/widget/TextView;

    .line 49
    return-void
.end method

.method public setHint(Ljava/lang/String;)V
    .locals 1
    .param p1, "hint"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/lenovo/scg/camera/focus/FocusResultScreenHint;->mHint:Ljava/lang/String;

    .line 61
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusResultScreenHint;->mHintLandTV:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusResultScreenHint;->mHintPortTV:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    return-void
.end method

.method public setHintColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 74
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusResultScreenHint;->mHintLandTV:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 75
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusResultScreenHint;->mHintPortTV:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 76
    return-void
.end method

.method public setOrientation(I)V
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    .line 106
    if-eqz p1, :cond_0

    const/16 v0, 0xb4

    if-ne p1, v0, :cond_1

    .line 108
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/focus/FocusResultScreenHint;->setPortOrLandVisible(Z)V

    .line 114
    :goto_0
    return-void

    .line 111
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/focus/FocusResultScreenHint;->setPortOrLandVisible(Z)V

    goto :goto_0
.end method
