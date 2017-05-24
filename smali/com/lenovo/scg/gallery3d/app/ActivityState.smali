.class public abstract Lcom/lenovo/scg/gallery3d/app/ActivityState;
.super Ljava/lang/Object;
.source "ActivityState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/app/ActivityState$ResultEntry;
    }
.end annotation


# static fields
.field protected static final FLAG_ALLOW_LOCK_WHILE_SCREEN_ON:I = 0x10

.field protected static final FLAG_HIDE_ACTION_BAR:I = 0x1

.field protected static final FLAG_HIDE_STATUS_BAR:I = 0x2

.field protected static final FLAG_SCREEN_ON_ALWAYS:I = 0x8

.field protected static final FLAG_SCREEN_ON_WHEN_PLUGGED:I = 0x4

.field protected static final FLAG_SHOW_WHEN_LOCKED:I = 0x20

.field private static final KEY_TRANSITION_IN:Ljava/lang/String; = "transition-in"

.field private static final SCREEN_ON_FLAGS:I = 0x80081


# instance fields
.field protected mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

.field protected mBackgroundColor:[F

.field private mContentPane:Lcom/lenovo/scg/gallery3d/ui/GLView;

.field protected mData:Landroid/os/Bundle;

.field private mDestroyed:Z

.field protected mFlags:I

.field private mIntroAnimation:Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation;

.field mIsFinishing:Z

.field private mNextTransition:Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Transition;

.field private mPlugged:Z

.field mPowerIntentReceiver:Landroid/content/BroadcastReceiver;

.field protected mReceivedResults:Lcom/lenovo/scg/gallery3d/app/ActivityState$ResultEntry;

.field protected mResult:Lcom/lenovo/scg/gallery3d/app/ActivityState$ResultEntry;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/ActivityState;->mDestroyed:Z

    .line 90
    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/ActivityState;->mPlugged:Z

    .line 92
    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/ActivityState;->mIsFinishing:Z

    .line 96
    sget-object v0, Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Transition;->None:Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Transition;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/ActivityState;->mNextTransition:Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Transition;

    .line 160
    new-instance v0, Lcom/lenovo/scg/gallery3d/app/ActivityState$1;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/app/ActivityState$1;-><init>(Lcom/lenovo/scg/gallery3d/app/ActivityState;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/ActivityState;->mPowerIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 103
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/gallery3d/app/ActivityState;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/ActivityState;

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/ActivityState;->mPlugged:Z

    return v0
.end method

.method static synthetic access$002(Lcom/lenovo/scg/gallery3d/app/ActivityState;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/ActivityState;
    .param p1, "x1"    # Z

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/app/ActivityState;->mPlugged:Z

    return p1
.end method

.method static synthetic access$100(Lcom/lenovo/scg/gallery3d/app/ActivityState;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/ActivityState;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/ActivityState;->setScreenFlags()V

    return-void
.end method

.method private setScreenFlags()V
    .locals 4

    .prologue
    .line 180
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/ActivityState;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 181
    .local v1, "win":Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 182
    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    iget v2, p0, Lcom/lenovo/scg/gallery3d/app/ActivityState;->mFlags:I

    and-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/lenovo/scg/gallery3d/app/ActivityState;->mPlugged:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/lenovo/scg/gallery3d/app/ActivityState;->mFlags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_1

    .line 183
    :cond_0
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v2, v2, 0x80

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 187
    :goto_0
    iget v2, p0, Lcom/lenovo/scg/gallery3d/app/ActivityState;->mFlags:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_2

    .line 188
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v2, v2, 0x1

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 192
    :goto_1
    iget v2, p0, Lcom/lenovo/scg/gallery3d/app/ActivityState;->mFlags:I

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_3

    .line 193
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x80000

    or-int/2addr v2, v3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 197
    :goto_2
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 198
    return-void

    .line 185
    :cond_1
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v2, v2, -0x81

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    .line 190
    :cond_2
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v2, v2, -0x2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_1

    .line 195
    :cond_3
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v3, -0x80001

    and-int/2addr v2, v3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_2
.end method


# virtual methods
.method protected clearStateResult()V
    .locals 0

    .prologue
    .line 158
    return-void
.end method

.method protected abstract getActionBarListener()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method protected getBackgroundColor()[F
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/ActivityState;->mBackgroundColor:[F

    return-object v0
.end method

.method protected getBackgroundColorId()I
    .locals 1

    .prologue
    .line 146
    const v0, 0x7f0d0012

    return v0
.end method

.method public getData()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/ActivityState;->mData:Landroid/os/Bundle;

    return-object v0
.end method

.method protected inSelectAllMode()Z
    .locals 1

    .prologue
    .line 321
    const/4 v0, 0x0

    return v0
.end method

.method initialize(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/ActivityState;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    .line 117
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/app/ActivityState;->mData:Landroid/os/Bundle;

    .line 118
    return-void
.end method

.method isDestroyed()Z
    .locals 1

    .prologue
    .line 303
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/ActivityState;->mDestroyed:Z

    return v0
.end method

.method public isFinishing()Z
    .locals 1

    .prologue
    .line 307
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/ActivityState;->mIsFinishing:Z

    return v0
.end method

.method protected onBackPressed()V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/ActivityState;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/lenovo/scg/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lenovo/scg/gallery3d/app/StateManager;->finishState(Lcom/lenovo/scg/gallery3d/app/ActivityState;)V

    .line 126
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 135
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "data"    # Landroid/os/Bundle;
    .param p2, "storedState"    # Landroid/os/Bundle;

    .prologue
    .line 154
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/ActivityState;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/ActivityState;->getBackgroundColorId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/util/GalleryUtils;->intColorToFloatARGBArray(I)[F

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/ActivityState;->mBackgroundColor:[F

    .line 155
    return-void
.end method

.method protected onCreateActionBar(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 291
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 299
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/ActivityState;->mDestroyed:Z

    .line 300
    return-void
.end method

.method protected onItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 295
    const/4 v0, 0x0

    return v0
.end method

.method protected onLeaveSelectionMode()V
    .locals 0

    .prologue
    .line 317
    return-void
.end method

.method protected onMenuPressed()V
    .locals 0

    .prologue
    .line 336
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 216
    iget v0, p0, Lcom/lenovo/scg/gallery3d/app/ActivityState;->mFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/ActivityState;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/ActivityState;->mPowerIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 219
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 280
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/ActivityState;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getTransitionStore()Lcom/lenovo/scg/gallery3d/app/TransitionStore;

    move-result-object v1

    const-string v2, "fade_texture"

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/app/TransitionStore;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    .line 281
    .local v0, "fade":Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/ActivityState;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getTransitionStore()Lcom/lenovo/scg/gallery3d/app/TransitionStore;

    move-result-object v1

    const-string/jumbo v2, "transition-in"

    sget-object v3, Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Transition;->None:Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Transition;

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/scg/gallery3d/app/TransitionStore;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Transition;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/app/ActivityState;->mNextTransition:Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Transition;

    .line 282
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/ActivityState;->mNextTransition:Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Transition;

    sget-object v2, Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Transition;->None:Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Transition;

    if-eq v1, v2, :cond_0

    .line 283
    new-instance v1, Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/ActivityState;->mNextTransition:Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Transition;

    invoke-direct {v1, v2, v0}, Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation;-><init>(Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Transition;Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;)V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/app/ActivityState;->mIntroAnimation:Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation;

    .line 284
    sget-object v1, Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Transition;->None:Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Transition;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/app/ActivityState;->mNextTransition:Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Transition;

    .line 286
    :cond_0
    return-void
.end method

.method protected onSaveState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 138
    return-void
.end method

.method protected onStateResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 141
    return-void
.end method

.method resume()V
    .locals 10

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 223
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/ActivityState;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    .line 224
    .local v1, "activity":Landroid/app/Activity;
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 225
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 226
    iget v6, p0, Lcom/lenovo/scg/gallery3d/app/ActivityState;->mFlags:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_3

    .line 227
    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    .line 231
    :goto_0
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/app/ActivityState;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/lenovo/scg/gallery3d/app/StateManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/app/StateManager;->getStateCount()I

    move-result v5

    .line 232
    .local v5, "stateCount":I
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/app/ActivityState;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getGalleryActionBar()Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;

    move-result-object v9

    if-le v5, v7, :cond_4

    move v6, v7

    :goto_1
    invoke-virtual {v9, v6, v7}, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->setDisplayOptions(ZZ)V

    .line 234
    invoke-virtual {v0, v8}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 237
    .end local v5    # "stateCount":I
    :cond_0
    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 241
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/ActivityState;->setScreenFlags()V

    .line 244
    iget v6, p0, Lcom/lenovo/scg/gallery3d/app/ActivityState;->mFlags:I

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_5

    move v4, v7

    .line 245
    .local v4, "lightsOut":Z
    :goto_2
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/app/ActivityState;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    move-result-object v6

    invoke-interface {v6, v4}, Lcom/lenovo/scg/gallery3d/ui/GLRoot;->setLightsOutMode(Z)V

    .line 247
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/ActivityState;->mReceivedResults:Lcom/lenovo/scg/gallery3d/app/ActivityState$ResultEntry;

    .line 248
    .local v2, "entry":Lcom/lenovo/scg/gallery3d/app/ActivityState$ResultEntry;
    if-eqz v2, :cond_1

    .line 249
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/lenovo/scg/gallery3d/app/ActivityState;->mReceivedResults:Lcom/lenovo/scg/gallery3d/app/ActivityState$ResultEntry;

    .line 250
    iget v6, v2, Lcom/lenovo/scg/gallery3d/app/ActivityState$ResultEntry;->requestCode:I

    iget v7, v2, Lcom/lenovo/scg/gallery3d/app/ActivityState$ResultEntry;->resultCode:I

    iget-object v8, v2, Lcom/lenovo/scg/gallery3d/app/ActivityState$ResultEntry;->resultData:Landroid/content/Intent;

    invoke-virtual {p0, v6, v7, v8}, Lcom/lenovo/scg/gallery3d/app/ActivityState;->onStateResult(IILandroid/content/Intent;)V

    .line 253
    :cond_1
    iget v6, p0, Lcom/lenovo/scg/gallery3d/app/ActivityState;->mFlags:I

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_2

    .line 255
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 256
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v6, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v3, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 257
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/app/ActivityState;->mPowerIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v6, v3}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 259
    .end local v3    # "filter":Landroid/content/IntentFilter;
    :cond_2
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/ActivityState;->onResume()V

    .line 262
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/app/ActivityState;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getTransitionStore()Lcom/lenovo/scg/gallery3d/app/TransitionStore;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/app/TransitionStore;->clear()V

    .line 263
    return-void

    .line 229
    .end local v2    # "entry":Lcom/lenovo/scg/gallery3d/app/ActivityState$ResultEntry;
    .end local v4    # "lightsOut":Z
    :cond_3
    invoke-virtual {v0}, Landroid/app/ActionBar;->show()V

    goto :goto_0

    .restart local v5    # "stateCount":I
    :cond_4
    move v6, v8

    .line 232
    goto :goto_1

    .end local v5    # "stateCount":I
    :cond_5
    move v4, v8

    .line 244
    goto :goto_2
.end method

.method public setBackgroundColor([F)V
    .locals 1
    .param p1, "color"    # [F

    .prologue
    .line 325
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/ActivityState;->mContentPane:Lcom/lenovo/scg/gallery3d/ui/GLView;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/ui/GLView;->setBackgroundColor([F)V

    .line 326
    return-void
.end method

.method protected setContentPane(Lcom/lenovo/scg/gallery3d/ui/GLView;)V
    .locals 2
    .param p1, "content"    # Lcom/lenovo/scg/gallery3d/ui/GLView;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/ActivityState;->mContentPane:Lcom/lenovo/scg/gallery3d/ui/GLView;

    .line 107
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/ActivityState;->mIntroAnimation:Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/ActivityState;->mContentPane:Lcom/lenovo/scg/gallery3d/ui/GLView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/ActivityState;->mIntroAnimation:Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/GLView;->setIntroAnimation(Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation;)V

    .line 109
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/ActivityState;->mIntroAnimation:Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation;

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/ActivityState;->mContentPane:Lcom/lenovo/scg/gallery3d/ui/GLView;

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/ActivityState;->getBackgroundColor()[F

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/GLView;->setBackgroundColor([F)V

    .line 112
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/ActivityState;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/ActivityState;->mContentPane:Lcom/lenovo/scg/gallery3d/ui/GLView;

    invoke-interface {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/GLRoot;->setContentPane(Lcom/lenovo/scg/gallery3d/ui/GLView;)V

    .line 113
    return-void
.end method

.method setScreenOnFlags()V
    .locals 4

    .prologue
    .line 266
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/ActivityState;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 267
    .local v1, "win":Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 269
    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    iget v2, p0, Lcom/lenovo/scg/gallery3d/app/ActivityState;->mFlags:I

    and-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/lenovo/scg/gallery3d/app/ActivityState;->mPlugged:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/lenovo/scg/gallery3d/app/ActivityState;->mFlags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_1

    .line 271
    :cond_0
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v3, 0x80081

    or-int/2addr v2, v3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 275
    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 276
    return-void

    .line 273
    :cond_1
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v3, -0x80082

    and-int/2addr v2, v3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0
.end method

.method protected setStateResult(ILandroid/content/Intent;)V
    .locals 1
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/ActivityState;->mResult:Lcom/lenovo/scg/gallery3d/app/ActivityState$ResultEntry;

    if-nez v0, :cond_0

    .line 132
    :goto_0
    return-void

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/ActivityState;->mResult:Lcom/lenovo/scg/gallery3d/app/ActivityState$ResultEntry;

    iput p1, v0, Lcom/lenovo/scg/gallery3d/app/ActivityState$ResultEntry;->resultCode:I

    .line 131
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/ActivityState;->mResult:Lcom/lenovo/scg/gallery3d/app/ActivityState$ResultEntry;

    iput-object p2, v0, Lcom/lenovo/scg/gallery3d/app/ActivityState$ResultEntry;->resultData:Landroid/content/Intent;

    goto :goto_0
.end method

.method protected transitionOnNextPause(Ljava/lang/Class;Ljava/lang/Class;Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Transition;)V
    .locals 1
    .param p3, "hint"    # Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Transition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/lenovo/scg/gallery3d/app/ActivityState;",
            ">;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/lenovo/scg/gallery3d/app/ActivityState;",
            ">;",
            "Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Transition;",
            ")V"
        }
    .end annotation

    .prologue
    .line 202
    .local p1, "outgoing":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/lenovo/scg/gallery3d/app/ActivityState;>;"
    .local p2, "incoming":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/lenovo/scg/gallery3d/app/ActivityState;>;"
    const-class v0, Lcom/lenovo/scg/gallery3d/app/SinglePhotoPage;

    if-ne p1, v0, :cond_0

    const-class v0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;

    if-ne p2, v0, :cond_0

    .line 203
    sget-object v0, Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Transition;->Outgoing:Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Transition;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/ActivityState;->mNextTransition:Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Transition;

    .line 209
    :goto_0
    return-void

    .line 204
    :cond_0
    const-class v0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;

    if-ne p1, v0, :cond_1

    const-class v0, Lcom/lenovo/scg/gallery3d/app/SinglePhotoPage;

    if-ne p2, v0, :cond_1

    .line 205
    sget-object v0, Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Transition;->PhotoIncoming:Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Transition;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/ActivityState;->mNextTransition:Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Transition;

    goto :goto_0

    .line 207
    :cond_1
    iput-object p3, p0, Lcom/lenovo/scg/gallery3d/app/ActivityState;->mNextTransition:Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Transition;

    goto :goto_0
.end method
