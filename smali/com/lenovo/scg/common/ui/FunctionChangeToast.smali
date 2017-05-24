.class public Lcom/lenovo/scg/common/ui/FunctionChangeToast;
.super Ljava/lang/Object;
.source "FunctionChangeToast.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/common/ui/FunctionChangeToast$ToastListener;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentTextIndex:I

.field private mFunction:I

.field private mHandler:Landroid/os/Handler;

.field private mLayoutRoot:Landroid/view/ViewGroup;

.field private mListener:Lcom/lenovo/scg/common/ui/FunctionChangeToast$ToastListener;

.field private mMessageView:Landroid/widget/TextView;

.field private mOrientation:I

.field private mRotateLayout:Lcom/lenovo/scg/camera/ui/RotateLayout;

.field private mText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parentView"    # Landroid/view/ViewGroup;
    .param p3, "function"    # I

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/lenovo/scg/common/ui/FunctionChangeToast;->mContext:Landroid/content/Context;

    .line 49
    iput-object p2, p0, Lcom/lenovo/scg/common/ui/FunctionChangeToast;->mLayoutRoot:Landroid/view/ViewGroup;

    .line 50
    iput p3, p0, Lcom/lenovo/scg/common/ui/FunctionChangeToast;->mFunction:I

    .line 51
    return-void
.end method

.method private initToast()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 54
    iget-object v2, p0, Lcom/lenovo/scg/common/ui/FunctionChangeToast;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 55
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f04008d

    iget-object v3, p0, Lcom/lenovo/scg/common/ui/FunctionChangeToast;->mLayoutRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 56
    .local v1, "toastRoot":Landroid/view/View;
    const v2, 0x7f1003ce

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/lenovo/scg/common/ui/FunctionChangeToast;->mMessageView:Landroid/widget/TextView;

    .line 57
    iget v2, p0, Lcom/lenovo/scg/common/ui/FunctionChangeToast;->mFunction:I

    if-ne v2, v4, :cond_0

    .line 58
    iget-object v2, p0, Lcom/lenovo/scg/common/ui/FunctionChangeToast;->mMessageView:Landroid/widget/TextView;

    const v3, 0x7f0f0117

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 64
    :goto_0
    const v2, 0x7f1003cc

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/camera/ui/RotateLayout;

    iput-object v2, p0, Lcom/lenovo/scg/common/ui/FunctionChangeToast;->mRotateLayout:Lcom/lenovo/scg/camera/ui/RotateLayout;

    .line 65
    iget-object v2, p0, Lcom/lenovo/scg/common/ui/FunctionChangeToast;->mRotateLayout:Lcom/lenovo/scg/camera/ui/RotateLayout;

    iget v3, p0, Lcom/lenovo/scg/common/ui/FunctionChangeToast;->mOrientation:I

    invoke-virtual {v2, v3, v4}, Lcom/lenovo/scg/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 66
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/lenovo/scg/common/ui/FunctionChangeToast;->mHandler:Landroid/os/Handler;

    .line 67
    invoke-direct {p0}, Lcom/lenovo/scg/common/ui/FunctionChangeToast;->updateLayout()V

    .line 68
    return-void

    .line 60
    :cond_0
    iget-object v2, p0, Lcom/lenovo/scg/common/ui/FunctionChangeToast;->mMessageView:Landroid/widget/TextView;

    const v3, 0x7f0f010c

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private updateLayout()V
    .locals 4

    .prologue
    .line 71
    iget-object v1, p0, Lcom/lenovo/scg/common/ui/FunctionChangeToast;->mRotateLayout:Lcom/lenovo/scg/camera/ui/RotateLayout;

    iget v2, p0, Lcom/lenovo/scg/common/ui/FunctionChangeToast;->mOrientation:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/scg/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 72
    iget-object v1, p0, Lcom/lenovo/scg/common/ui/FunctionChangeToast;->mRotateLayout:Lcom/lenovo/scg/camera/ui/RotateLayout;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/ui/RotateLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 73
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget v1, p0, Lcom/lenovo/scg/common/ui/FunctionChangeToast;->mOrientation:I

    rem-int/lit16 v1, v1, 0xb4

    if-nez v1, :cond_0

    .line 74
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 81
    :goto_0
    return-void

    .line 77
    :cond_0
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 78
    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 79
    iget-object v1, p0, Lcom/lenovo/scg/common/ui/FunctionChangeToast;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0902ad

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    goto :goto_0
.end method


# virtual methods
.method public setToastListener(Lcom/lenovo/scg/common/ui/FunctionChangeToast$ToastListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/lenovo/scg/common/ui/FunctionChangeToast$ToastListener;

    .prologue
    .line 182
    iput-object p1, p0, Lcom/lenovo/scg/common/ui/FunctionChangeToast;->mListener:Lcom/lenovo/scg/common/ui/FunctionChangeToast$ToastListener;

    .line 183
    return-void
.end method

.method public show(I)V
    .locals 2
    .param p1, "orientation"    # I

    .prologue
    .line 84
    iput p1, p0, Lcom/lenovo/scg/common/ui/FunctionChangeToast;->mOrientation:I

    .line 85
    invoke-direct {p0}, Lcom/lenovo/scg/common/ui/FunctionChangeToast;->initToast()V

    .line 86
    iget-object v0, p0, Lcom/lenovo/scg/common/ui/FunctionChangeToast;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/lenovo/scg/common/ui/FunctionChangeToast;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/common/ui/FunctionChangeToast;->mText:Ljava/lang/String;

    .line 88
    invoke-virtual {p0}, Lcom/lenovo/scg/common/ui/FunctionChangeToast;->startShowAnim()V

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/common/ui/FunctionChangeToast;->mRotateLayout:Lcom/lenovo/scg/camera/ui/RotateLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/ui/RotateLayout;->setVisibility(I)V

    .line 91
    return-void
.end method

.method public startHideAnim()V
    .locals 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/lenovo/scg/common/ui/FunctionChangeToast;->mLayoutRoot:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/lenovo/scg/common/ui/FunctionChangeToast;->mRotateLayout:Lcom/lenovo/scg/camera/ui/RotateLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 176
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/common/ui/FunctionChangeToast;->mRotateLayout:Lcom/lenovo/scg/camera/ui/RotateLayout;

    .line 179
    return-void
.end method

.method public startShowAnim()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 123
    iget v1, p0, Lcom/lenovo/scg/common/ui/FunctionChangeToast;->mCurrentTextIndex:I

    iget-object v2, p0, Lcom/lenovo/scg/common/ui/FunctionChangeToast;->mText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 125
    iput v3, p0, Lcom/lenovo/scg/common/ui/FunctionChangeToast;->mCurrentTextIndex:I

    .line 126
    iget-object v1, p0, Lcom/lenovo/scg/common/ui/FunctionChangeToast;->mListener:Lcom/lenovo/scg/common/ui/FunctionChangeToast$ToastListener;

    if-eqz v1, :cond_0

    .line 127
    iget-object v1, p0, Lcom/lenovo/scg/common/ui/FunctionChangeToast;->mListener:Lcom/lenovo/scg/common/ui/FunctionChangeToast$ToastListener;

    invoke-interface {v1}, Lcom/lenovo/scg/common/ui/FunctionChangeToast$ToastListener;->onShow()V

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/common/ui/FunctionChangeToast;->mText:Ljava/lang/String;

    iget v2, p0, Lcom/lenovo/scg/common/ui/FunctionChangeToast;->mCurrentTextIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/lenovo/scg/common/ui/FunctionChangeToast;->mCurrentTextIndex:I

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, "text":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lcom/lenovo/scg/common/ui/FunctionChangeToast;->mText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v1, v2, :cond_2

    .line 133
    iget-object v1, p0, Lcom/lenovo/scg/common/ui/FunctionChangeToast;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    iget v1, p0, Lcom/lenovo/scg/common/ui/FunctionChangeToast;->mCurrentTextIndex:I

    iget-object v2, p0, Lcom/lenovo/scg/common/ui/FunctionChangeToast;->mText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v1, v2, :cond_0

    .line 142
    iget-object v1, p0, Lcom/lenovo/scg/common/ui/FunctionChangeToast;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/lenovo/scg/common/ui/FunctionChangeToast$1;

    invoke-direct {v2, p0}, Lcom/lenovo/scg/common/ui/FunctionChangeToast$1;-><init>(Lcom/lenovo/scg/common/ui/FunctionChangeToast;)V

    const-wide/16 v4, 0x32

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 136
    :cond_2
    iget-object v1, p0, Lcom/lenovo/scg/common/ui/FunctionChangeToast;->mListener:Lcom/lenovo/scg/common/ui/FunctionChangeToast$ToastListener;

    if-eqz v1, :cond_0

    .line 137
    iget-object v1, p0, Lcom/lenovo/scg/common/ui/FunctionChangeToast;->mListener:Lcom/lenovo/scg/common/ui/FunctionChangeToast$ToastListener;

    invoke-interface {v1}, Lcom/lenovo/scg/common/ui/FunctionChangeToast$ToastListener;->onShow()V

    goto :goto_0
.end method
