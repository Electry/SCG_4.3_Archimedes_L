.class public abstract Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay;
.super Landroid/widget/FrameLayout;
.source "CommonControllerOverlay.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/app/ControllerOverlay;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/lenovo/scg/gallery3d/app/TimeBar$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay$State;
    }
.end annotation


# static fields
.field private static final ERROR_MESSAGE_RELATIVE_PADDING:F = 0.16666667f


# instance fields
.field protected final mBackground:Landroid/view/View;

.field protected mCanReplay:Z

.field protected final mErrorView:Landroid/widget/TextView;

.field protected mListener:Lcom/lenovo/scg/gallery3d/app/ControllerOverlay$Listener;

.field protected final mLoadingView:Landroid/widget/LinearLayout;

.field protected mMainView:Landroid/view/View;

.field protected final mPlayPauseReplayView:Landroid/widget/ImageView;

.field protected mState:Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay$State;

.field protected mTimeBar:Lcom/lenovo/scg/gallery3d/app/TimeBar;

.field private final mWindowInsets:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, -0x2

    const/4 v9, -0x1

    const/4 v8, 0x1

    .line 67
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 64
    iput-boolean v8, p0, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay;->mCanReplay:Z

    .line 239
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay;->mWindowInsets:Landroid/graphics/Rect;

    .line 69
    sget-object v5, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay$State;->LOADING:Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay$State;

    iput-object v5, p0, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay;->mState:Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay$State;

    .line 71
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 72
    .local v4, "wrapContent":Landroid/widget/FrameLayout$LayoutParams;
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 74
    .local v1, "matchParent":Landroid/widget/FrameLayout$LayoutParams;
    new-instance v5, Landroid/view/View;

    invoke-direct {v5, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay;->mBackground:Landroid/view/View;

    .line 75
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay;->mBackground:Landroid/view/View;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d016b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 76
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay;->mBackground:Landroid/view/View;

    invoke-virtual {p0, v5, v1}, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay;->createTimeBar(Landroid/content/Context;)V

    .line 81
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay;->mTimeBar:Lcom/lenovo/scg/gallery3d/app/TimeBar;

    invoke-virtual {p0, v5, v4}, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay;->mTimeBar:Lcom/lenovo/scg/gallery3d/app/TimeBar;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0f057e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/lenovo/scg/gallery3d/app/TimeBar;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 83
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay;->mLoadingView:Landroid/widget/LinearLayout;

    .line 84
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay;->mLoadingView:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 85
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay;->mLoadingView:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 86
    new-instance v3, Landroid/widget/ProgressBar;

    invoke-direct {v3, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 87
    .local v3, "spinner":Landroid/widget/ProgressBar;
    invoke-virtual {v3, v8}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 88
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay;->mLoadingView:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay;->createOverlayTextView(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v0

    .line 90
    .local v0, "loadingText":Landroid/widget/TextView;
    const v5, 0x7f0f0647

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    .line 91
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay;->mLoadingView:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay;->mLoadingView:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v5, v4}, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    new-instance v5, Landroid/widget/ImageView;

    invoke-direct {v5, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay;->mPlayPauseReplayView:Landroid/widget/ImageView;

    .line 95
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay;->mPlayPauseReplayView:Landroid/widget/ImageView;

    const v6, 0x7f0206bd

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 96
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay;->mPlayPauseReplayView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0f057b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay;->mPlayPauseReplayView:Landroid/widget/ImageView;

    const v6, 0x7f020071

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 98
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay;->mPlayPauseReplayView:Landroid/widget/ImageView;

    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 99
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay;->mPlayPauseReplayView:Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 100
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay;->mPlayPauseReplayView:Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 101
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay;->mPlayPauseReplayView:Landroid/widget/ImageView;

    invoke-virtual {v5, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay;->mPlayPauseReplayView:Landroid/widget/ImageView;

    invoke-virtual {p0, v5, v4}, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 104
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay;->createOverlayTextView(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v5

    iput-object v5, p0, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay;->mErrorView:Landroid/widget/TextView;

    .line 105
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay;->mErrorView:Landroid/widget/TextView;

    invoke-virtual {p0, v5, v1}, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 107
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 108
    .local v2, "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0, v2}, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 109
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay;->hide()V

    .line 110
    return-void
.end method

.method private createOverlayTextView(Landroid/content/Context;)Landroid/widget/TextView;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v3, 0xf

    const/4 v2, 0x0

    .line 115
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 116
    .local v0, "view":Landroid/widget/TextView;
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 117
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 118
    invoke-virtual {v0, v2, v3, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 119
    return-object v0
.end method

.method private layoutCenteredView(Landroid/view/View;IIII)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 278
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 279
    .local v3, "cw":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 280
    .local v0, "ch":I
    sub-int v4, p4, p2

    sub-int/2addr v4, v3

    div-int/lit8 v1, v4, 0x2

    .line 281
    .local v1, "cl":I
    sub-int v4, p5, p3

    sub-int/2addr v4, v0

    div-int/lit8 v2, v4, 0x2

    .line 282
    .local v2, "ct":I
    add-int v4, v1, v3

    add-int v5, v2, v0

    invoke-virtual {p1, v1, v2, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 283
    return-void
.end method

.method private showMainView(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 186
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay;->mMainView:Landroid/view/View;

    .line 187
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay;->mErrorView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay;->mMainView:Landroid/view/View;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay;->mErrorView:Landroid/widget/TextView;

    if-ne v0, v4, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 188
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay;->mLoadingView:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay;->mMainView:Landroid/view/View;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay;->mLoadingView:Landroid/widget/LinearLayout;

    if-ne v0, v4, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 189
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay;->mPlayPauseReplayView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay;->mMainView:Landroid/view/View;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay;->mPlayPauseReplayView:Landroid/widget/ImageView;

    if-ne v3, v4, :cond_2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 190
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay;->show()V

    .line 191
    return-void

    :cond_0
    move v0, v2

    .line 187
    goto :goto_0

    :cond_1
    move v0, v2

    .line 188
    goto :goto_1

    :cond_2
    move v1, v2

    .line 189
    goto :goto_2
.end method


# virtual methods
.method protected abstract createTimeBar(Landroid/content/Context;)V
.end method

.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 1
    .param p1, "insets"    # Landroid/graphics/Rect;

    .prologue
    .line 245
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay;->mWindowInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 246
    const/4 v0, 0x1

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    .prologue
    .line 134
    return-object p0
.end method

.method public hide()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 176
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay;->mPlayPauseReplayView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 177
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay;->mLoadingView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 178
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay;->mBackground:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 179
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay;->mTimeBar:Lcom/lenovo/scg/gallery3d/app/TimeBar;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/app/TimeBar;->setVisibility(I)V

    .line 180
    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay;->setVisibility(I)V

    .line 181
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay;->setFocusable(Z)V

    .line 182
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay;->requestFocus()Z

    .line 183
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 202
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay;->mListener:Lcom/lenovo/scg/gallery3d/app/ControllerOverlay$Listener;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay;->mPlayPauseReplayView:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay;->mState:Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay$State;

    sget-object v1, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay$State;->ENDED:Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay$State;

    if-ne v0, v1, :cond_1

    .line 205
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay;->mCanReplay:Z

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay;->mListener:Lcom/lenovo/scg/gallery3d/app/ControllerOverlay$Listener;

    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/app/ControllerOverlay$Listener;->onReplay()V

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 208
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay;->mState:Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay$State;

    sget-object v1, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay$State;->PAUSED:Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay$State;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay;->mState:Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay$State;

    sget-object v1, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay$State;->PLAYING:Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay$State;

    if-ne v0, v1, :cond_0

    .line 209
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay;->mListener:Lcom/lenovo/scg/gallery3d/app/ControllerOverlay$Listener;

    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/app/ControllerOverlay$Listener;->onPlayPause()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 217
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 13
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 251
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay;->mWindowInsets:Landroid/graphics/Rect;

    .line 252
    .local v7, "insets":Landroid/graphics/Rect;
    iget v9, v7, Landroid/graphics/Rect;->left:I

    .line 253
    .local v9, "pl":I
    iget v10, v7, Landroid/graphics/Rect;->right:I

    .line 254
    .local v10, "pr":I
    iget v11, v7, Landroid/graphics/Rect;->top:I

    .line 255
    .local v11, "pt":I
    iget v8, v7, Landroid/graphics/Rect;->bottom:I

    .line 257
    .local v8, "pb":I
    sub-int v5, p5, p3

    .line 258
    .local v5, "h":I
    sub-int v4, p4, p2

    .line 259
    .local v4, "w":I
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay;->mErrorView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v6, 0x1

    .line 261
    .local v6, "error":Z
    :goto_0
    sub-int v12, v5, v8

    .line 266
    .local v12, "y":I
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay;->mBackground:Landroid/view/View;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay;->mTimeBar:Lcom/lenovo/scg/gallery3d/app/TimeBar;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/app/TimeBar;->getBarHeight()I

    move-result v2

    sub-int v2, v12, v2

    invoke-virtual {v0, v1, v2, v4, v12}, Landroid/view/View;->layout(IIII)V

    .line 267
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay;->mTimeBar:Lcom/lenovo/scg/gallery3d/app/TimeBar;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay;->mTimeBar:Lcom/lenovo/scg/gallery3d/app/TimeBar;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/app/TimeBar;->getPreferredHeight()I

    move-result v1

    sub-int v1, v12, v1

    sub-int v2, v4, v10

    invoke-virtual {v0, v9, v1, v2, v12}, Lcom/lenovo/scg/gallery3d/app/TimeBar;->layout(IIII)V

    .line 270
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay;->mPlayPauseReplayView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay;->layoutCenteredView(Landroid/view/View;IIII)V

    .line 272
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay;->mMainView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 273
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay;->mMainView:Landroid/view/View;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay;->layoutCenteredView(Landroid/view/View;IIII)V

    .line 275
    :cond_0
    return-void

    .line 259
    .end local v6    # "error":Z
    .end local v12    # "y":I
    :cond_1
    const/4 v6, 0x0

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 0
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 287
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 288
    invoke-virtual {p0, p1, p2}, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay;->measureChildren(II)V

    .line 289
    return-void
.end method

.method public onScrubbingEnd(III)V
    .locals 1
    .param p1, "time"    # I
    .param p2, "trimStartTime"    # I
    .param p3, "trimEndTime"    # I

    .prologue
    .line 326
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay;->mListener:Lcom/lenovo/scg/gallery3d/app/ControllerOverlay$Listener;

    invoke-interface {v0, p1, p2, p3}, Lcom/lenovo/scg/gallery3d/app/ControllerOverlay$Listener;->onSeekEnd(III)V

    .line 327
    return-void
.end method

.method public onScrubbingMove(I)V
    .locals 1
    .param p1, "time"    # I

    .prologue
    .line 321
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay;->mListener:Lcom/lenovo/scg/gallery3d/app/ControllerOverlay$Listener;

    invoke-interface {v0, p1}, Lcom/lenovo/scg/gallery3d/app/ControllerOverlay$Listener;->onSeekMove(I)V

    .line 322
    return-void
.end method

.method public onScrubbingStart()V
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay;->mListener:Lcom/lenovo/scg/gallery3d/app/ControllerOverlay$Listener;

    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/app/ControllerOverlay$Listener;->onSeekStart()V

    .line 317
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 222
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    const/4 v0, 0x1

    .line 225
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCanReplay(Z)V
    .locals 0
    .param p1, "canReplay"    # Z

    .prologue
    .line 129
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay;->mCanReplay:Z

    .line 130
    return-void
.end method

.method public setListener(Lcom/lenovo/scg/gallery3d/app/ControllerOverlay$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/lenovo/scg/gallery3d/app/ControllerOverlay$Listener;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay;->mListener:Lcom/lenovo/scg/gallery3d/app/ControllerOverlay$Listener;

    .line 125
    return-void
.end method

.method public setTimes(IIII)V
    .locals 1
    .param p1, "currentTime"    # I
    .param p2, "totalTime"    # I
    .param p3, "trimStartTime"    # I
    .param p4, "trimEndTime"    # I

    .prologue
    .line 172
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay;->mTimeBar:Lcom/lenovo/scg/gallery3d/app/TimeBar;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/lenovo/scg/gallery3d/app/TimeBar;->setTime(IIII)V

    .line 173
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 195
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay;->updateViews()V

    .line 196
    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay;->setVisibility(I)V

    .line 197
    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay;->setFocusable(Z)V

    .line 198
    return-void
.end method

.method public showEnded()V
    .locals 1

    .prologue
    .line 151
    sget-object v0, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay$State;->ENDED:Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay$State;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay;->mState:Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay$State;

    .line 152
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay;->mCanReplay:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay;->mPlayPauseReplayView:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay;->showMainView(Landroid/view/View;)V

    .line 153
    :cond_0
    return-void
.end method

.method public showErrorMessage(Ljava/lang/String;)V
    .locals 4
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 163
    sget-object v1, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay$State;->ERROR:Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay$State;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay;->mState:Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay$State;

    .line 164
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3e2aaaab

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 165
    .local v0, "padding":I
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay;->mErrorView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay;->mErrorView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay;->mErrorView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v3

    invoke-virtual {v1, v0, v2, v0, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 166
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay;->mErrorView:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay;->mErrorView:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay;->showMainView(Landroid/view/View;)V

    .line 168
    return-void
.end method

.method public showLoading()V
    .locals 1

    .prologue
    .line 157
    sget-object v0, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay$State;->LOADING:Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay$State;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay;->mState:Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay$State;

    .line 158
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay;->mLoadingView:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay;->showMainView(Landroid/view/View;)V

    .line 159
    return-void
.end method

.method public showPaused()V
    .locals 1

    .prologue
    .line 145
    sget-object v0, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay$State;->PAUSED:Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay$State;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay;->mState:Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay$State;

    .line 146
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay;->mPlayPauseReplayView:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay;->showMainView(Landroid/view/View;)V

    .line 147
    return-void
.end method

.method public showPlaying()V
    .locals 1

    .prologue
    .line 139
    sget-object v0, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay$State;->PLAYING:Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay$State;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay;->mState:Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay$State;

    .line 140
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay;->mPlayPauseReplayView:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay;->showMainView(Landroid/view/View;)V

    .line 141
    return-void
.end method

.method protected updateViews()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 292
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay;->mBackground:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 293
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay;->mTimeBar:Lcom/lenovo/scg/gallery3d/app/TimeBar;

    invoke-virtual {v4, v3}, Lcom/lenovo/scg/gallery3d/app/TimeBar;->setVisibility(I)V

    .line 294
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 295
    .local v2, "resources":Landroid/content/res/Resources;
    const v1, 0x7f0206be

    .line 296
    .local v1, "imageResource":I
    const v4, 0x7f0f057d

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 297
    .local v0, "contentDescription":Ljava/lang/String;
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay;->mState:Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay$State;

    sget-object v5, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay$State;->PAUSED:Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay$State;

    if-ne v4, v5, :cond_2

    .line 298
    const v1, 0x7f0206bd

    .line 299
    const v4, 0x7f0f057b

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 305
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay;->mPlayPauseReplayView:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 306
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay;->mPlayPauseReplayView:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 307
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay;->mPlayPauseReplayView:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay;->mState:Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay$State;

    sget-object v6, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay$State;->LOADING:Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay$State;

    if-eq v5, v6, :cond_3

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay;->mState:Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay$State;

    sget-object v6, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay$State;->ERROR:Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay$State;

    if-eq v5, v6, :cond_3

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay;->mState:Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay$State;

    sget-object v6, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay$State;->ENDED:Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay$State;

    if-ne v5, v6, :cond_1

    iget-boolean v5, p0, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay;->mCanReplay:Z

    if-eqz v5, :cond_3

    :cond_1
    :goto_1
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 309
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay;->requestLayout()V

    .line 310
    return-void

    .line 300
    :cond_2
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay;->mState:Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay$State;

    sget-object v5, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay$State;->PLAYING:Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay$State;

    if-ne v4, v5, :cond_0

    .line 301
    const v1, 0x7f0206bc

    .line 302
    const v4, 0x7f0f057c

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 307
    :cond_3
    const/16 v3, 0x8

    goto :goto_1
.end method
