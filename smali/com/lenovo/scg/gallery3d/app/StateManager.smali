.class public Lcom/lenovo/scg/gallery3d/app/StateManager;
.super Ljava/lang/Object;
.source "StateManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/app/StateManager$StateEntry;
    }
.end annotation


# static fields
.field private static final KEY_CLASS:Ljava/lang/String; = "class"

.field private static final KEY_DATA:Ljava/lang/String; = "data"

.field private static final KEY_MAIN:Ljava/lang/String; = "activity-state"

.field private static final KEY_STATE:Ljava/lang/String; = "bundle"

.field private static final TAG:Ljava/lang/String; = "StateManager"


# instance fields
.field private mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

.field private mHasSwitch:Z

.field private mIsResumed:Z

.field private mResult:Lcom/lenovo/scg/gallery3d/app/ActivityState$ResultEntry;

.field private mStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/lenovo/scg/gallery3d/app/StateManager$StateEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)V
    .locals 2
    .param p1, "activity"    # Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    .prologue
    const/4 v1, 0x0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/app/StateManager;->mIsResumed:Z

    .line 54
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    .line 59
    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/app/StateManager;->mHasSwitch:Z

    .line 95
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/StateManager;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    .line 96
    return-void
.end method

.method private switchScreenOrientation(Lcom/lenovo/scg/gallery3d/app/ActivityState;)V
    .locals 3
    .param p1, "state"    # Lcom/lenovo/scg/gallery3d/app/ActivityState;

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x1

    .line 547
    instance-of v0, p1, Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/lenovo/scg/gallery3d/app/SlideshowPage;

    if-eqz v0, :cond_3

    .line 548
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/StateManager;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getRequestedOrientation()I

    move-result v0

    if-eq v0, v2, :cond_1

    .line 549
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/StateManager;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    instance-of v0, v0, Lcom/lenovo/scg/camera/CameraActivity;

    if-eqz v0, :cond_2

    .line 550
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/StateManager;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->setRequestedOrientation(I)V

    .line 560
    :cond_1
    :goto_0
    return-void

    .line 552
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/StateManager;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 556
    :cond_3
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/StateManager;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getRequestedOrientation()I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 557
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/StateManager;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->setRequestedOrientation(I)V

    goto :goto_0
.end method


# virtual methods
.method public clearActivityResult()V
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 187
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/StateManager;->getTopState()Lcom/lenovo/scg/gallery3d/app/ActivityState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/ActivityState;->clearStateResult()V

    .line 189
    :cond_0
    return-void
.end method

.method public clearTasks()V
    .locals 2

    .prologue
    .line 225
    :goto_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 226
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/app/StateManager$StateEntry;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/app/StateManager$StateEntry;->activityState:Lcom/lenovo/scg/gallery3d/app/ActivityState;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/ActivityState;->onDestroy()V

    goto :goto_0

    .line 228
    :cond_0
    return-void
.end method

.method public createOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 156
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    const/4 v0, 0x0

    .line 159
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/StateManager;->getTopState()Lcom/lenovo/scg/gallery3d/app/ActivityState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/app/ActivityState;->onCreateActionBar(Landroid/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 413
    const-string v0, "StateManager"

    const-string v1, "destroy"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    :goto_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 415
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/app/StateManager$StateEntry;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/app/StateManager$StateEntry;->activityState:Lcom/lenovo/scg/gallery3d/app/ActivityState;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/ActivityState;->onDestroy()V

    goto :goto_0

    .line 417
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 418
    return-void
.end method

.method public destroyActivityState(Lcom/lenovo/scg/gallery3d/app/ActivityState;)V
    .locals 1
    .param p1, "state"    # Lcom/lenovo/scg/gallery3d/app/ActivityState;

    .prologue
    .line 422
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/StateManager;->mIsResumed:Z

    if-eqz v0, :cond_0

    .line 423
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/app/ActivityState;->onPause()V

    .line 425
    :cond_0
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/app/ActivityState;->onDestroy()V

    .line 427
    return-void
.end method

.method public findActivityInst(Ljava/lang/Class;)Lcom/lenovo/scg/gallery3d/app/ActivityState;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/lenovo/scg/gallery3d/app/ActivityState;",
            ">;)",
            "Lcom/lenovo/scg/gallery3d/app/ActivityState;"
        }
    .end annotation

    .prologue
    .line 505
    .local p1, "klass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/lenovo/scg/gallery3d/app/ActivityState;>;"
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->size()I

    move-result v2

    .line 506
    .local v2, "size":I
    const/4 v3, 0x0

    .line 507
    .local v3, "stateDst":Lcom/lenovo/scg/gallery3d/app/ActivityState;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 508
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v4, v1}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/app/StateManager$StateEntry;

    .line 509
    .local v0, "entry":Lcom/lenovo/scg/gallery3d/app/StateManager$StateEntry;
    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/app/StateManager$StateEntry;->activityState:Lcom/lenovo/scg/gallery3d/app/ActivityState;

    invoke-virtual {p1, v4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 510
    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/app/StateManager$StateEntry;->activityState:Lcom/lenovo/scg/gallery3d/app/ActivityState;

    .line 507
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 523
    .end local v0    # "entry":Lcom/lenovo/scg/gallery3d/app/StateManager$StateEntry;
    :cond_1
    return-object v3
.end method

.method public finishState(Lcom/lenovo/scg/gallery3d/app/ActivityState;)V
    .locals 1
    .param p1, "state"    # Lcom/lenovo/scg/gallery3d/app/ActivityState;

    .prologue
    .line 215
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/lenovo/scg/gallery3d/app/StateManager;->finishState(Lcom/lenovo/scg/gallery3d/app/ActivityState;Z)V

    .line 216
    return-void
.end method

.method finishState(Lcom/lenovo/scg/gallery3d/app/ActivityState;Z)V
    .locals 7
    .param p1, "state"    # Lcom/lenovo/scg/gallery3d/app/ActivityState;
    .param p2, "fireOnPause"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x1

    .line 233
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v2

    if-ne v2, v6, :cond_3

    .line 234
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/StateManager;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 235
    .local v0, "activity":Landroid/app/Activity;
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/StateManager;->mResult:Lcom/lenovo/scg/gallery3d/app/ActivityState$ResultEntry;

    if-eqz v2, :cond_0

    .line 236
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/StateManager;->mResult:Lcom/lenovo/scg/gallery3d/app/ActivityState$ResultEntry;

    iget v2, v2, Lcom/lenovo/scg/gallery3d/app/ActivityState$ResultEntry;->resultCode:I

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/StateManager;->mResult:Lcom/lenovo/scg/gallery3d/app/ActivityState$ResultEntry;

    iget-object v4, v4, Lcom/lenovo/scg/gallery3d/app/ActivityState$ResultEntry;->resultData:Landroid/content/Intent;

    invoke-virtual {v0, v2, v4}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 238
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 239
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_2

    .line 240
    const-string v2, "StateManager"

    const-string v3, "finish is rejected, keep the last state"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_1
    :goto_0
    return-void

    .line 243
    .restart local v0    # "activity":Landroid/app/Activity;
    :cond_2
    const-string v2, "StateManager"

    const-string/jumbo v4, "no more state, finish activity"

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_3
    const-string v2, "StateManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "finishState "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/gallery3d/app/StateManager$StateEntry;

    iget-object v2, v2, Lcom/lenovo/scg/gallery3d/app/StateManager$StateEntry;->activityState:Lcom/lenovo/scg/gallery3d/app/ActivityState;

    if-eq p1, v2, :cond_5

    .line 248
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/app/ActivityState;->isDestroyed()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 249
    const-string v2, "StateManager"

    const-string v3, "The state is already destroyed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 252
    :cond_4
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The stateview to be finished is not at the top of the stack: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/gallery3d/app/StateManager$StateEntry;

    iget-object v2, v2, Lcom/lenovo/scg/gallery3d/app/StateManager$StateEntry;->activityState:Lcom/lenovo/scg/gallery3d/app/ActivityState;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 258
    :cond_5
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 259
    iput-boolean v6, p1, Lcom/lenovo/scg/gallery3d/app/ActivityState;->mIsFinishing:Z

    .line 260
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/gallery3d/app/StateManager$StateEntry;

    iget-object v1, v2, Lcom/lenovo/scg/gallery3d/app/StateManager$StateEntry;->activityState:Lcom/lenovo/scg/gallery3d/app/ActivityState;

    .line 261
    .local v1, "top":Lcom/lenovo/scg/gallery3d/app/ActivityState;
    :goto_1
    iget-boolean v2, p0, Lcom/lenovo/scg/gallery3d/app/StateManager;->mIsResumed:Z

    if-eqz v2, :cond_7

    if-eqz p2, :cond_7

    .line 262
    if-eqz v1, :cond_6

    .line 263
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    sget-object v5, Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Transition;->Outgoing:Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Transition;

    invoke-virtual {p1, v2, v4, v5}, Lcom/lenovo/scg/gallery3d/app/ActivityState;->transitionOnNextPause(Ljava/lang/Class;Ljava/lang/Class;Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Transition;)V

    .line 265
    :cond_6
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/app/ActivityState;->onPause()V

    .line 267
    :cond_7
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/StateManager;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    move-result-object v2

    invoke-interface {v2, v3}, Lcom/lenovo/scg/gallery3d/ui/GLRoot;->setContentPane(Lcom/lenovo/scg/gallery3d/ui/GLView;)V

    .line 268
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/app/ActivityState;->onDestroy()V

    .line 270
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    .line 272
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/gallery3d/app/StateManager$StateEntry;

    iget-object v1, v2, Lcom/lenovo/scg/gallery3d/app/StateManager$StateEntry;->activityState:Lcom/lenovo/scg/gallery3d/app/ActivityState;

    .line 274
    invoke-direct {p0, v1}, Lcom/lenovo/scg/gallery3d/app/StateManager;->switchScreenOrientation(Lcom/lenovo/scg/gallery3d/app/ActivityState;)V

    .line 278
    :cond_8
    if-eqz v1, :cond_9

    iget-boolean v2, p0, Lcom/lenovo/scg/gallery3d/app/StateManager;->mIsResumed:Z

    if-eqz v2, :cond_9

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/app/ActivityState;->resume()V

    .line 279
    :cond_9
    if-eqz v1, :cond_1

    .line 280
    const-string v2, "Gallery"

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lenovo/scg/gallery3d/util/UsageStatistics;->onContentViewChanged(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v1    # "top":Lcom/lenovo/scg/gallery3d/app/ActivityState;
    :cond_a
    move-object v1, v3

    .line 260
    goto :goto_1
.end method

.method getAlbumSetPageInstance()Lcom/lenovo/scg/gallery3d/app/ActivityState;
    .locals 3

    .prologue
    .line 64
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 65
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v2, v1}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/app/StateManager$StateEntry;

    .line 66
    .local v0, "entry":Lcom/lenovo/scg/gallery3d/app/StateManager$StateEntry;
    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/app/StateManager$StateEntry;->activityState:Lcom/lenovo/scg/gallery3d/app/ActivityState;

    instance-of v2, v2, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    if-eqz v2, :cond_0

    .line 67
    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/app/StateManager$StateEntry;->activityState:Lcom/lenovo/scg/gallery3d/app/ActivityState;

    .line 70
    .end local v0    # "entry":Lcom/lenovo/scg/gallery3d/app/StateManager$StateEntry;
    :goto_1
    return-object v2

    .line 64
    .restart local v0    # "entry":Lcom/lenovo/scg/gallery3d/app/StateManager$StateEntry;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 70
    .end local v0    # "entry":Lcom/lenovo/scg/gallery3d/app/StateManager$StateEntry;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method getLandScapePageInstance()Lcom/lenovo/scg/gallery3d/app/ActivityState;
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    return-object v0
.end method

.method getPhotoPageInstance()Lcom/lenovo/scg/gallery3d/app/ActivityState;
    .locals 3

    .prologue
    .line 84
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 85
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v2, v1}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/app/StateManager$StateEntry;

    .line 86
    .local v0, "entry":Lcom/lenovo/scg/gallery3d/app/StateManager$StateEntry;
    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/app/StateManager$StateEntry;->activityState:Lcom/lenovo/scg/gallery3d/app/ActivityState;

    instance-of v2, v2, Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    if-eqz v2, :cond_0

    .line 87
    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/app/StateManager$StateEntry;->activityState:Lcom/lenovo/scg/gallery3d/app/ActivityState;

    .line 90
    .end local v0    # "entry":Lcom/lenovo/scg/gallery3d/app/StateManager$StateEntry;
    :goto_1
    return-object v2

    .line 84
    .restart local v0    # "entry":Lcom/lenovo/scg/gallery3d/app/StateManager$StateEntry;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 90
    .end local v0    # "entry":Lcom/lenovo/scg/gallery3d/app/StateManager$StateEntry;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getStateCount()I
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    return v0
.end method

.method public getTopState()Lcom/lenovo/scg/gallery3d/app/ActivityState;
    .locals 1

    .prologue
    .line 528
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 530
    :goto_0
    return-object v0

    .line 529
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/common/Utils;->assertTrue(Z)V

    .line 530
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/app/StateManager$StateEntry;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/app/StateManager$StateEntry;->activityState:Lcom/lenovo/scg/gallery3d/app/ActivityState;

    goto :goto_0

    .line 529
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public hasStateClass(Ljava/lang/Class;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/lenovo/scg/gallery3d/app/ActivityState;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 494
    .local p1, "klass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/lenovo/scg/gallery3d/app/ActivityState;>;"
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/app/StateManager$StateEntry;

    .line 495
    .local v0, "entry":Lcom/lenovo/scg/gallery3d/app/StateManager$StateEntry;
    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/app/StateManager$StateEntry;->activityState:Lcom/lenovo/scg/gallery3d/app/ActivityState;

    invoke-virtual {p1, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 496
    const/4 v2, 0x1

    .line 499
    .end local v0    # "entry":Lcom/lenovo/scg/gallery3d/app/StateManager$StateEntry;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isHasSwitch()Z
    .locals 1

    .prologue
    .line 566
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/StateManager;->mHasSwitch:Z

    return v0
.end method

.method public itemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 196
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 197
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/StateManager;->getTopState()Lcom/lenovo/scg/gallery3d/app/ActivityState;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/lenovo/scg/gallery3d/app/ActivityState;->onItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 205
    :cond_0
    :goto_0
    return v0

    .line 198
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x102002c

    if-ne v1, v2, :cond_2

    .line 199
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    if-le v1, v0, :cond_0

    .line 200
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/StateManager;->getTopState()Lcom/lenovo/scg/gallery3d/app/ActivityState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/app/ActivityState;->onBackPressed()V

    goto :goto_0

    .line 205
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 182
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/StateManager;->getTopState()Lcom/lenovo/scg/gallery3d/app/ActivityState;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/lenovo/scg/gallery3d/app/ActivityState;->onStateResult(IILandroid/content/Intent;)V

    .line 183
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 210
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/StateManager;->getTopState()Lcom/lenovo/scg/gallery3d/app/ActivityState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/ActivityState;->onBackPressed()V

    .line 212
    :cond_0
    return-void
.end method

.method public onConfigurationChange(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 164
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/app/StateManager$StateEntry;

    .line 165
    .local v0, "entry":Lcom/lenovo/scg/gallery3d/app/StateManager$StateEntry;
    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/app/StateManager$StateEntry;->activityState:Lcom/lenovo/scg/gallery3d/app/ActivityState;

    invoke-virtual {v2, p1}, Lcom/lenovo/scg/gallery3d/app/ActivityState;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_0

    .line 167
    .end local v0    # "entry":Lcom/lenovo/scg/gallery3d/app/StateManager$StateEntry;
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 176
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/StateManager;->mIsResumed:Z

    if-nez v0, :cond_1

    .line 179
    :cond_0
    :goto_0
    return-void

    .line 177
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/StateManager;->mIsResumed:Z

    .line 178
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/StateManager;->getTopState()Lcom/lenovo/scg/gallery3d/app/ActivityState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/ActivityState;->onPause()V

    goto :goto_0
.end method

.method public restartFaceState()V
    .locals 1

    .prologue
    .line 430
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/StateManager;->getTopState()Lcom/lenovo/scg/gallery3d/app/ActivityState;

    move-result-object v0

    .line 436
    .local v0, "state":Lcom/lenovo/scg/gallery3d/app/ActivityState;
    return-void
.end method

.method public restoreFromState(Landroid/os/Bundle;)V
    .locals 16
    .param p1, "inState"    # Landroid/os/Bundle;

    .prologue
    .line 442
    const-string v13, "StateManager"

    const-string/jumbo v14, "restoreFromState"

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    const-string v13, "activity-state"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v9

    .line 444
    .local v9, "list":[Landroid/os/Parcelable;
    const/4 v12, 0x0

    .line 445
    .local v12, "topState":Lcom/lenovo/scg/gallery3d/app/ActivityState;
    move-object v2, v9

    .local v2, "arr$":[Landroid/os/Parcelable;
    array-length v8, v2

    .local v8, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_0
    if-ge v6, v8, :cond_0

    aget-object v10, v2, v6

    .local v10, "parcelable":Landroid/os/Parcelable;
    move-object v3, v10

    .line 446
    check-cast v3, Landroid/os/Bundle;

    .line 447
    .local v3, "bundle":Landroid/os/Bundle;
    const-string v13, "class"

    invoke-virtual {v3, v13}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v7

    check-cast v7, Ljava/lang/Class;

    .line 449
    .local v7, "klass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/lenovo/scg/gallery3d/app/ActivityState;>;"
    const-string v13, "data"

    invoke-virtual {v3, v13}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 450
    .local v4, "data":Landroid/os/Bundle;
    const-string v13, "bundle"

    invoke-virtual {v3, v13}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v11

    .line 454
    .local v11, "state":Landroid/os/Bundle;
    :try_start_0
    const-string v13, "StateManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "restoreFromState "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    invoke-virtual {v7}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/app/ActivityState;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 459
    .local v1, "activityState":Lcom/lenovo/scg/gallery3d/app/ActivityState;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/gallery3d/app/StateManager;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1, v13, v4}, Lcom/lenovo/scg/gallery3d/app/ActivityState;->initialize(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;Landroid/os/Bundle;)V

    .line 461
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/lenovo/scg/gallery3d/app/StateManager;->switchScreenOrientation(Lcom/lenovo/scg/gallery3d/app/ActivityState;)V

    .line 464
    new-instance v13, Lcom/lenovo/scg/gallery3d/app/ActivityState$ResultEntry;

    invoke-direct {v13}, Lcom/lenovo/scg/gallery3d/app/ActivityState$ResultEntry;-><init>()V

    iput-object v13, v1, Lcom/lenovo/scg/gallery3d/app/ActivityState;->mReceivedResults:Lcom/lenovo/scg/gallery3d/app/ActivityState$ResultEntry;

    .line 466
    invoke-virtual {v1, v4, v11}, Lcom/lenovo/scg/gallery3d/app/ActivityState;->onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 467
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    new-instance v14, Lcom/lenovo/scg/gallery3d/app/StateManager$StateEntry;

    invoke-direct {v14, v4, v1}, Lcom/lenovo/scg/gallery3d/app/StateManager$StateEntry;-><init>(Landroid/os/Bundle;Lcom/lenovo/scg/gallery3d/app/ActivityState;)V

    invoke-virtual {v13, v14}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    move-object v12, v1

    .line 445
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 456
    .end local v1    # "activityState":Lcom/lenovo/scg/gallery3d/app/ActivityState;
    :catch_0
    move-exception v5

    .line 457
    .local v5, "e":Ljava/lang/Exception;
    new-instance v13, Ljava/lang/AssertionError;

    invoke-direct {v13, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v13

    .line 470
    .end local v3    # "bundle":Landroid/os/Bundle;
    .end local v4    # "data":Landroid/os/Bundle;
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v7    # "klass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/lenovo/scg/gallery3d/app/ActivityState;>;"
    .end local v10    # "parcelable":Landroid/os/Parcelable;
    .end local v11    # "state":Landroid/os/Bundle;
    :cond_0
    if-eqz v12, :cond_1

    .line 471
    const-string v13, "Gallery"

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/lenovo/scg/gallery3d/util/UsageStatistics;->onContentViewChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    :cond_1
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 170
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/StateManager;->mIsResumed:Z

    if-eqz v0, :cond_1

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 171
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/StateManager;->mIsResumed:Z

    .line 172
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/StateManager;->getTopState()Lcom/lenovo/scg/gallery3d/app/ActivityState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/ActivityState;->resume()V

    goto :goto_0
.end method

.method public saveState(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 476
    const-string v7, "StateManager"

    const-string/jumbo v8, "saveState"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v7}, Ljava/util/Stack;->size()I

    move-result v7

    new-array v5, v7, [Landroid/os/Parcelable;

    .line 479
    .local v5, "list":[Landroid/os/Parcelable;
    const/4 v2, 0x0

    .line 480
    .local v2, "i":I
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v7}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/app/StateManager$StateEntry;

    .line 481
    .local v1, "entry":Lcom/lenovo/scg/gallery3d/app/StateManager$StateEntry;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 482
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v7, "class"

    iget-object v8, v1, Lcom/lenovo/scg/gallery3d/app/StateManager$StateEntry;->activityState:Lcom/lenovo/scg/gallery3d/app/ActivityState;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 483
    const-string v7, "data"

    iget-object v8, v1, Lcom/lenovo/scg/gallery3d/app/StateManager$StateEntry;->data:Landroid/os/Bundle;

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 484
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 485
    .local v6, "state":Landroid/os/Bundle;
    iget-object v7, v1, Lcom/lenovo/scg/gallery3d/app/StateManager$StateEntry;->activityState:Lcom/lenovo/scg/gallery3d/app/ActivityState;

    invoke-virtual {v7, v6}, Lcom/lenovo/scg/gallery3d/app/ActivityState;->onSaveState(Landroid/os/Bundle;)V

    .line 486
    const-string v7, "bundle"

    invoke-virtual {v0, v7, v6}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 487
    const-string v7, "StateManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "saveState "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v1, Lcom/lenovo/scg/gallery3d/app/StateManager$StateEntry;->activityState:Lcom/lenovo/scg/gallery3d/app/ActivityState;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .local v3, "i":I
    aput-object v0, v5, v2

    move v2, v3

    .line 489
    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto :goto_0

    .line 490
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "entry":Lcom/lenovo/scg/gallery3d/app/StateManager$StateEntry;
    .end local v6    # "state":Landroid/os/Bundle;
    :cond_0
    const-string v7, "activity-state"

    invoke-virtual {p1, v7, v5}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 491
    return-void
.end method

.method public setHasSwitch(Z)V
    .locals 0
    .param p1, "mHasSwitch"    # Z

    .prologue
    .line 570
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/app/StateManager;->mHasSwitch:Z

    .line 571
    return-void
.end method

.method public showStack()V
    .locals 8

    .prologue
    .line 404
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->size()I

    move-result v3

    .line 405
    .local v3, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 406
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v4, v1}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/app/StateManager$StateEntry;

    .line 407
    .local v0, "entry":Lcom/lenovo/scg/gallery3d/app/StateManager$StateEntry;
    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/app/StateManager$StateEntry;->activityState:Lcom/lenovo/scg/gallery3d/app/ActivityState;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    .line 408
    .local v2, "sClsName":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_%d"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    add-int/lit8 v7, v1, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 405
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 410
    .end local v0    # "entry":Lcom/lenovo/scg/gallery3d/app/StateManager$StateEntry;
    .end local v2    # "sClsName":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public startState(Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 7
    .param p2, "data"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/lenovo/scg/gallery3d/app/ActivityState;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 99
    .local p1, "klass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/lenovo/scg/gallery3d/app/ActivityState;>;"
    const-string v4, "StateManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "startState "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    const/4 v2, 0x0

    .line 102
    .local v2, "state":Lcom/lenovo/scg/gallery3d/app/ActivityState;
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "state":Lcom/lenovo/scg/gallery3d/app/ActivityState;
    check-cast v2, Lcom/lenovo/scg/gallery3d/app/ActivityState;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    .restart local v2    # "state":Lcom/lenovo/scg/gallery3d/app/ActivityState;
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 107
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/StateManager;->getTopState()Lcom/lenovo/scg/gallery3d/app/ActivityState;

    move-result-object v3

    .line 108
    .local v3, "top":Lcom/lenovo/scg/gallery3d/app/ActivityState;
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    sget-object v5, Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Transition;->Incoming:Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Transition;

    invoke-virtual {v3, v4, p1, v5}, Lcom/lenovo/scg/gallery3d/app/ActivityState;->transitionOnNextPause(Ljava/lang/Class;Ljava/lang/Class;Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Transition;)V

    .line 109
    iget-boolean v4, p0, Lcom/lenovo/scg/gallery3d/app/StateManager;->mIsResumed:Z

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/app/ActivityState;->onPause()V

    .line 112
    .end local v3    # "top":Lcom/lenovo/scg/gallery3d/app/ActivityState;
    :cond_0
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/StateManager;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    instance-of v4, v4, Lcom/lenovo/scg/camera/CameraActivity;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v1, 0x1

    .line 113
    .local v1, "ignoreHit":Z
    :goto_0
    if-nez v1, :cond_1

    .line 114
    const-string v4, "Gallery"

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lenovo/scg/gallery3d/util/UsageStatistics;->onContentViewChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    :cond_1
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/StateManager;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2, v4, p2}, Lcom/lenovo/scg/gallery3d/app/ActivityState;->initialize(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;Landroid/os/Bundle;)V

    .line 118
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    new-instance v5, Lcom/lenovo/scg/gallery3d/app/StateManager$StateEntry;

    invoke-direct {v5, p2, v2}, Lcom/lenovo/scg/gallery3d/app/StateManager$StateEntry;-><init>(Landroid/os/Bundle;Lcom/lenovo/scg/gallery3d/app/ActivityState;)V

    invoke-virtual {v4, v5}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    invoke-direct {p0, v2}, Lcom/lenovo/scg/gallery3d/app/StateManager;->switchScreenOrientation(Lcom/lenovo/scg/gallery3d/app/ActivityState;)V

    .line 122
    const/4 v4, 0x0

    invoke-virtual {v2, p2, v4}, Lcom/lenovo/scg/gallery3d/app/ActivityState;->onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 123
    iget-boolean v4, p0, Lcom/lenovo/scg/gallery3d/app/StateManager;->mIsResumed:Z

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/app/ActivityState;->resume()V

    .line 124
    :cond_2
    return-void

    .line 103
    .end local v1    # "ignoreHit":Z
    .end local v2    # "state":Lcom/lenovo/scg/gallery3d/app/ActivityState;
    :catch_0
    move-exception v0

    .line 104
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 112
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "state":Lcom/lenovo/scg/gallery3d/app/ActivityState;
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public startStateForResult(Ljava/lang/Class;ILandroid/os/Bundle;)V
    .locals 6
    .param p2, "requestCode"    # I
    .param p3, "data"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/lenovo/scg/gallery3d/app/ActivityState;",
            ">;I",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 127
    .local p1, "klass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/lenovo/scg/gallery3d/app/ActivityState;>;"
    const-string v3, "StateManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startStateForResult "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    const/4 v2, 0x0

    .line 130
    .local v2, "state":Lcom/lenovo/scg/gallery3d/app/ActivityState;
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "state":Lcom/lenovo/scg/gallery3d/app/ActivityState;
    check-cast v2, Lcom/lenovo/scg/gallery3d/app/ActivityState;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    .restart local v2    # "state":Lcom/lenovo/scg/gallery3d/app/ActivityState;
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/StateManager;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2, v3, p3}, Lcom/lenovo/scg/gallery3d/app/ActivityState;->initialize(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;Landroid/os/Bundle;)V

    .line 135
    new-instance v3, Lcom/lenovo/scg/gallery3d/app/ActivityState$ResultEntry;

    invoke-direct {v3}, Lcom/lenovo/scg/gallery3d/app/ActivityState$ResultEntry;-><init>()V

    iput-object v3, v2, Lcom/lenovo/scg/gallery3d/app/ActivityState;->mResult:Lcom/lenovo/scg/gallery3d/app/ActivityState$ResultEntry;

    .line 136
    iget-object v3, v2, Lcom/lenovo/scg/gallery3d/app/ActivityState;->mResult:Lcom/lenovo/scg/gallery3d/app/ActivityState$ResultEntry;

    iput p2, v3, Lcom/lenovo/scg/gallery3d/app/ActivityState$ResultEntry;->requestCode:I

    .line 138
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 139
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/StateManager;->getTopState()Lcom/lenovo/scg/gallery3d/app/ActivityState;

    move-result-object v0

    .line 140
    .local v0, "as":Lcom/lenovo/scg/gallery3d/app/ActivityState;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    sget-object v4, Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Transition;->Incoming:Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Transition;

    invoke-virtual {v0, v3, p1, v4}, Lcom/lenovo/scg/gallery3d/app/ActivityState;->transitionOnNextPause(Ljava/lang/Class;Ljava/lang/Class;Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Transition;)V

    .line 141
    iget-object v3, v2, Lcom/lenovo/scg/gallery3d/app/ActivityState;->mResult:Lcom/lenovo/scg/gallery3d/app/ActivityState$ResultEntry;

    iput-object v3, v0, Lcom/lenovo/scg/gallery3d/app/ActivityState;->mReceivedResults:Lcom/lenovo/scg/gallery3d/app/ActivityState$ResultEntry;

    .line 142
    iget-boolean v3, p0, Lcom/lenovo/scg/gallery3d/app/StateManager;->mIsResumed:Z

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/ActivityState;->onPause()V

    .line 146
    .end local v0    # "as":Lcom/lenovo/scg/gallery3d/app/ActivityState;
    :cond_0
    :goto_0
    const-string v3, "Gallery"

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lenovo/scg/gallery3d/util/UsageStatistics;->onContentViewChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    new-instance v4, Lcom/lenovo/scg/gallery3d/app/StateManager$StateEntry;

    invoke-direct {v4, p3, v2}, Lcom/lenovo/scg/gallery3d/app/StateManager$StateEntry;-><init>(Landroid/os/Bundle;Lcom/lenovo/scg/gallery3d/app/ActivityState;)V

    invoke-virtual {v3, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    invoke-direct {p0, v2}, Lcom/lenovo/scg/gallery3d/app/StateManager;->switchScreenOrientation(Lcom/lenovo/scg/gallery3d/app/ActivityState;)V

    .line 151
    const/4 v3, 0x0

    invoke-virtual {v2, p3, v3}, Lcom/lenovo/scg/gallery3d/app/ActivityState;->onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 152
    iget-boolean v3, p0, Lcom/lenovo/scg/gallery3d/app/StateManager;->mIsResumed:Z

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/app/ActivityState;->resume()V

    .line 153
    :cond_1
    return-void

    .line 131
    .end local v2    # "state":Lcom/lenovo/scg/gallery3d/app/ActivityState;
    :catch_0
    move-exception v1

    .line 132
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 144
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "state":Lcom/lenovo/scg/gallery3d/app/ActivityState;
    :cond_2
    iget-object v3, v2, Lcom/lenovo/scg/gallery3d/app/ActivityState;->mResult:Lcom/lenovo/scg/gallery3d/app/ActivityState$ResultEntry;

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/app/StateManager;->mResult:Lcom/lenovo/scg/gallery3d/app/ActivityState$ResultEntry;

    goto :goto_0
.end method

.method public switchState(Lcom/lenovo/scg/gallery3d/app/ActivityState;Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "oldState"    # Lcom/lenovo/scg/gallery3d/app/ActivityState;
    .param p3, "data"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lenovo/scg/gallery3d/app/ActivityState;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/lenovo/scg/gallery3d/app/ActivityState;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 286
    .local p2, "klass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/lenovo/scg/gallery3d/app/ActivityState;>;"
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->empty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 325
    :goto_0
    return-void

    .line 289
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/lenovo/scg/gallery3d/app/StateManager;->mHasSwitch:Z

    .line 292
    const-string v2, "StateManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "switchState "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/gallery3d/app/StateManager$StateEntry;

    iget-object v2, v2, Lcom/lenovo/scg/gallery3d/app/StateManager$StateEntry;->activityState:Lcom/lenovo/scg/gallery3d/app/ActivityState;

    if-eq p1, v2, :cond_1

    .line 294
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/StateManager;->showStack()V

    .line 295
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The stateview to be finished is not at the top of the stack: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/gallery3d/app/StateManager$StateEntry;

    iget-object v2, v2, Lcom/lenovo/scg/gallery3d/app/StateManager$StateEntry;->activityState:Lcom/lenovo/scg/gallery3d/app/ActivityState;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 299
    :cond_1
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 300
    const-string v2, "app-bridge"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 302
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    sget-object v3, Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Transition;->Incoming:Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Transition;

    invoke-virtual {p1, v2, p2, v3}, Lcom/lenovo/scg/gallery3d/app/ActivityState;->transitionOnNextPause(Ljava/lang/Class;Ljava/lang/Class;Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Transition;)V

    .line 304
    :cond_2
    iget-boolean v2, p0, Lcom/lenovo/scg/gallery3d/app/StateManager;->mIsResumed:Z

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/app/ActivityState;->onPause()V

    .line 306
    :cond_3
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/app/ActivityState;->onLeaveSelectionMode()V

    .line 308
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/app/ActivityState;->onDestroy()V

    .line 311
    const/4 v1, 0x0

    .line 313
    .local v1, "state":Lcom/lenovo/scg/gallery3d/app/ActivityState;
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "state":Lcom/lenovo/scg/gallery3d/app/ActivityState;
    check-cast v1, Lcom/lenovo/scg/gallery3d/app/ActivityState;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    .restart local v1    # "state":Lcom/lenovo/scg/gallery3d/app/ActivityState;
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/StateManager;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1, v2, p3}, Lcom/lenovo/scg/gallery3d/app/ActivityState;->initialize(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;Landroid/os/Bundle;)V

    .line 318
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    new-instance v3, Lcom/lenovo/scg/gallery3d/app/StateManager$StateEntry;

    invoke-direct {v3, p3, v1}, Lcom/lenovo/scg/gallery3d/app/StateManager$StateEntry;-><init>(Landroid/os/Bundle;Lcom/lenovo/scg/gallery3d/app/ActivityState;)V

    invoke-virtual {v2, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    invoke-direct {p0, v1}, Lcom/lenovo/scg/gallery3d/app/StateManager;->switchScreenOrientation(Lcom/lenovo/scg/gallery3d/app/ActivityState;)V

    .line 322
    const/4 v2, 0x0

    invoke-virtual {v1, p3, v2}, Lcom/lenovo/scg/gallery3d/app/ActivityState;->onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 323
    iget-boolean v2, p0, Lcom/lenovo/scg/gallery3d/app/StateManager;->mIsResumed:Z

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/app/ActivityState;->resume()V

    .line 324
    :cond_4
    const-string v2, "Gallery"

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lenovo/scg/gallery3d/util/UsageStatistics;->onContentViewChanged(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 314
    .end local v1    # "state":Lcom/lenovo/scg/gallery3d/app/ActivityState;
    :catch_0
    move-exception v0

    .line 315
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method public switchStateNotDestory(Lcom/lenovo/scg/gallery3d/app/ActivityState;Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 7
    .param p1, "oldState"    # Lcom/lenovo/scg/gallery3d/app/ActivityState;
    .param p3, "data"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lenovo/scg/gallery3d/app/ActivityState;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/lenovo/scg/gallery3d/app/ActivityState;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 330
    .local p2, "klass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/lenovo/scg/gallery3d/app/ActivityState;>;"
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->empty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 400
    :goto_0
    return-void

    .line 334
    :cond_0
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/lenovo/scg/gallery3d/app/StateManager;->mHasSwitch:Z

    .line 337
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_1
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 338
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v4, v1}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/scg/gallery3d/app/StateManager$StateEntry;

    iget-object v4, v4, Lcom/lenovo/scg/gallery3d/app/StateManager$StateEntry;->activityState:Lcom/lenovo/scg/gallery3d/app/ActivityState;

    invoke-virtual {p2, v4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 342
    :cond_1
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->size()I

    move-result v4

    if-ge v1, v4, :cond_6

    .line 343
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v4, v1}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/app/StateManager$StateEntry;

    .line 344
    .local v3, "stateEntry":Lcom/lenovo/scg/gallery3d/app/StateManager$StateEntry;
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v4, v1}, Ljava/util/Stack;->remove(I)Ljava/lang/Object;

    .line 345
    const-string v4, "app-bridge"

    invoke-virtual {p3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 347
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    sget-object v5, Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Transition;->Incoming:Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Transition;

    invoke-virtual {p1, v4, p2, v5}, Lcom/lenovo/scg/gallery3d/app/ActivityState;->transitionOnNextPause(Ljava/lang/Class;Ljava/lang/Class;Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Transition;)V

    .line 349
    :cond_2
    iget-boolean v4, p0, Lcom/lenovo/scg/gallery3d/app/StateManager;->mIsResumed:Z

    if-eqz v4, :cond_3

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/app/ActivityState;->onPause()V

    .line 351
    :cond_3
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/app/ActivityState;->onLeaveSelectionMode()V

    .line 353
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v4, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    iget-object v4, v3, Lcom/lenovo/scg/gallery3d/app/StateManager$StateEntry;->activityState:Lcom/lenovo/scg/gallery3d/app/ActivityState;

    invoke-direct {p0, v4}, Lcom/lenovo/scg/gallery3d/app/StateManager;->switchScreenOrientation(Lcom/lenovo/scg/gallery3d/app/ActivityState;)V

    .line 358
    iget-boolean v4, p0, Lcom/lenovo/scg/gallery3d/app/StateManager;->mIsResumed:Z

    if-eqz v4, :cond_4

    iget-object v4, v3, Lcom/lenovo/scg/gallery3d/app/StateManager$StateEntry;->activityState:Lcom/lenovo/scg/gallery3d/app/ActivityState;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/app/ActivityState;->resume()V

    .line 359
    :cond_4
    const-string v4, "Gallery"

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lenovo/scg/gallery3d/util/UsageStatistics;->onContentViewChanged(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 337
    .end local v3    # "stateEntry":Lcom/lenovo/scg/gallery3d/app/StateManager$StateEntry;
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 367
    :cond_6
    const-string v4, "StateManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "switchState "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/scg/gallery3d/app/StateManager$StateEntry;

    iget-object v4, v4, Lcom/lenovo/scg/gallery3d/app/StateManager$StateEntry;->activityState:Lcom/lenovo/scg/gallery3d/app/ActivityState;

    if-eq p1, v4, :cond_7

    .line 369
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/StateManager;->showStack()V

    .line 370
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The stateview to be finished is not at the top of the stack: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/scg/gallery3d/app/StateManager$StateEntry;

    iget-object v4, v4, Lcom/lenovo/scg/gallery3d/app/StateManager$StateEntry;->activityState:Lcom/lenovo/scg/gallery3d/app/ActivityState;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 375
    :cond_7
    const-string v4, "app-bridge"

    invoke-virtual {p3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 377
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    sget-object v5, Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Transition;->Incoming:Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Transition;

    invoke-virtual {p1, v4, p2, v5}, Lcom/lenovo/scg/gallery3d/app/ActivityState;->transitionOnNextPause(Ljava/lang/Class;Ljava/lang/Class;Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Transition;)V

    .line 379
    :cond_8
    iget-boolean v4, p0, Lcom/lenovo/scg/gallery3d/app/StateManager;->mIsResumed:Z

    if-eqz v4, :cond_9

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/app/ActivityState;->onPause()V

    .line 381
    :cond_9
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/app/ActivityState;->onLeaveSelectionMode()V

    .line 386
    const/4 v2, 0x0

    .line 388
    .local v2, "state":Lcom/lenovo/scg/gallery3d/app/ActivityState;
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "state":Lcom/lenovo/scg/gallery3d/app/ActivityState;
    check-cast v2, Lcom/lenovo/scg/gallery3d/app/ActivityState;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 392
    .restart local v2    # "state":Lcom/lenovo/scg/gallery3d/app/ActivityState;
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/StateManager;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2, v4, p3}, Lcom/lenovo/scg/gallery3d/app/ActivityState;->initialize(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;Landroid/os/Bundle;)V

    .line 393
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/StateManager;->mStack:Ljava/util/Stack;

    new-instance v5, Lcom/lenovo/scg/gallery3d/app/StateManager$StateEntry;

    invoke-direct {v5, p3, v2}, Lcom/lenovo/scg/gallery3d/app/StateManager$StateEntry;-><init>(Landroid/os/Bundle;Lcom/lenovo/scg/gallery3d/app/ActivityState;)V

    invoke-virtual {v4, v5}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    invoke-direct {p0, v2}, Lcom/lenovo/scg/gallery3d/app/StateManager;->switchScreenOrientation(Lcom/lenovo/scg/gallery3d/app/ActivityState;)V

    .line 397
    const/4 v4, 0x0

    invoke-virtual {v2, p3, v4}, Lcom/lenovo/scg/gallery3d/app/ActivityState;->onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 398
    iget-boolean v4, p0, Lcom/lenovo/scg/gallery3d/app/StateManager;->mIsResumed:Z

    if-eqz v4, :cond_a

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/app/ActivityState;->resume()V

    .line 399
    :cond_a
    const-string v4, "Gallery"

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lenovo/scg/gallery3d/util/UsageStatistics;->onContentViewChanged(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 389
    .end local v2    # "state":Lcom/lenovo/scg/gallery3d/app/ActivityState;
    :catch_0
    move-exception v0

    .line 390
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4
.end method
