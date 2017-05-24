.class public Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity;
.super Landroid/app/Activity;
.source "AbstractWeiboDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity$EnumTaskDoneType;
    }
.end annotation


# static fields
.field protected static final END_PROGRESS:I = 0x20003

.field protected static final HIDE_ARROW:I = 0x10016

.field protected static final HIDE_PROGRESS_BAR:I = 0x20004

.field protected static final LOAD_MORE:I = 0x10000

.field protected static final LOAD_MORE_DOWN_HIDE_LOADING:I = 0x10001

.field protected static final PLUS_PROGRESS:I = 0x20002

.field protected static final SHOW_ARROW_01:I = 0x10012

.field protected static final SHOW_ARROW_02:I = 0x10013

.field protected static final SHOW_ARROW_03:I = 0x10014

.field protected static final SHOW_ARROW_04:I = 0x10015

.field protected static final START_PROGRESS:I = 0x20001

.field protected static final START_SHOW_ARROW:I = 0x10011


# instance fields
.field private comment_max_id:J

.field protected downloadFinish:Z

.field protected isCommentPage:Z

.field protected isUpdate:Z

.field private mArrow:Landroid/view/View;

.field private mDialog:Lcom/lenovo/scg/gallery3d/weibo/views/PinWheelDialog;

.field mHandler:Landroid/os/Handler;

.field private mPool:Lcom/lenovo/scg/gallery3d/net/NetThreadPool;

.field private mPreferences:Landroid/content/SharedPreferences;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private random:Ljava/util/Random;

.field private repost_max_id:J

.field private task:Lcom/lenovo/scg/gallery3d/net/NetThreadTask;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 31
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity;->mPool:Lcom/lenovo/scg/gallery3d/net/NetThreadPool;

    .line 32
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity;->task:Lcom/lenovo/scg/gallery3d/net/NetThreadTask;

    .line 33
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity;->random:Ljava/util/Random;

    .line 39
    iput-wide v2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity;->comment_max_id:J

    .line 41
    iput-wide v2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity;->repost_max_id:J

    .line 43
    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity;->isUpdate:Z

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity;->isCommentPage:Z

    .line 62
    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity;->downloadFinish:Z

    .line 133
    new-instance v0, Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity$1;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity$1;-><init>(Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity;)Ljava/util/Random;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity;->random:Ljava/util/Random;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity;->mArrow:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$202(Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity;->mArrow:Landroid/view/View;

    return-object p1
.end method


# virtual methods
.method public getComment_last_id()J
    .locals 2

    .prologue
    .line 90
    iget-wide v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity;->comment_max_id:J

    return-wide v0
.end method

.method public getRepost_past_id()J
    .locals 2

    .prologue
    .line 75
    iget-wide v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity;->repost_max_id:J

    return-wide v0
.end method

.method public getStatusPic(Ljava/lang/String;Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;)V
    .locals 3
    .param p1, "picurl"    # Ljava/lang/String;
    .param p2, "mDoneListener"    # Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;
    .param p3, "mItem"    # Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    .prologue
    .line 270
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity;->task:Lcom/lenovo/scg/gallery3d/net/NetThreadTask;

    if-nez v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity;->mPool:Lcom/lenovo/scg/gallery3d/net/NetThreadPool;

    sget-object v1, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumTaskType;->TASK_TYPE_WEIBO:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumTaskType;

    sget-object v2, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumActionType;->ACTION_TYPE_GET:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumActionType;

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/net/NetThreadPool;->getTask(Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumTaskType;Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumActionType;)Lcom/lenovo/scg/gallery3d/net/NetThreadTask;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity;->task:Lcom/lenovo/scg/gallery3d/net/NetThreadTask;

    .line 273
    :cond_0
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity;->task:Lcom/lenovo/scg/gallery3d/net/NetThreadTask;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->addNetTask(Lcom/lenovo/scg/gallery3d/net/NetThreadTask;)V

    .line 274
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity;->task:Lcom/lenovo/scg/gallery3d/net/NetThreadTask;

    sget-object v1, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataType;->DATA_TYPE_BYTES:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataType;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, p1, v2}, Lcom/lenovo/scg/gallery3d/net/NetThreadTask;->setTaskPara(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 275
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity;->mPool:Lcom/lenovo/scg/gallery3d/net/NetThreadPool;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity;->task:Lcom/lenovo/scg/gallery3d/net/NetThreadTask;

    invoke-virtual {v0, v1, p2, p3}, Lcom/lenovo/scg/gallery3d/net/NetThreadPool;->runTask(Lcom/lenovo/scg/gallery3d/net/NetThreadTask;Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;Ljava/lang/Object;)V

    .line 276
    return-void
.end method

.method public getStatusTimeLine(Ljava/lang/String;Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;Ljava/lang/Object;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "mDoneListener"    # Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;
    .param p3, "resultType"    # Ljava/lang/Object;

    .prologue
    .line 256
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity;->task:Lcom/lenovo/scg/gallery3d/net/NetThreadTask;

    if-nez v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity;->mPool:Lcom/lenovo/scg/gallery3d/net/NetThreadPool;

    sget-object v1, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumTaskType;->TASK_TYPE_WEIBO:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumTaskType;

    sget-object v2, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumActionType;->ACTION_TYPE_GET:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumActionType;

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/net/NetThreadPool;->getTask(Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumTaskType;Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumActionType;)Lcom/lenovo/scg/gallery3d/net/NetThreadTask;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity;->task:Lcom/lenovo/scg/gallery3d/net/NetThreadTask;

    .line 259
    :cond_0
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity;->task:Lcom/lenovo/scg/gallery3d/net/NetThreadTask;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->addNetTask(Lcom/lenovo/scg/gallery3d/net/NetThreadTask;)V

    .line 260
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity;->task:Lcom/lenovo/scg/gallery3d/net/NetThreadTask;

    sget-object v1, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataType;->DATA_TYPE_STRING:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataType;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, p1, v2}, Lcom/lenovo/scg/gallery3d/net/NetThreadTask;->setTaskPara(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 261
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity;->mPool:Lcom/lenovo/scg/gallery3d/net/NetThreadPool;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity;->task:Lcom/lenovo/scg/gallery3d/net/NetThreadTask;

    invoke-virtual {v0, v1, p2, p3}, Lcom/lenovo/scg/gallery3d/net/NetThreadPool;->runTask(Lcom/lenovo/scg/gallery3d/net/NetThreadTask;Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;Ljava/lang/Object;)V

    .line 262
    return-void
.end method

.method protected hideLoadingMoreAnim(Landroid/view/View;)V
    .locals 1
    .param p1, "mView"    # Landroid/view/View;

    .prologue
    .line 118
    if-eqz p1, :cond_0

    .line 119
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 120
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 122
    :cond_0
    return-void
.end method

.method public hidePinWheelDialog()V
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity;->mDialog:Lcom/lenovo/scg/gallery3d/weibo/views/PinWheelDialog;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/weibo/views/PinWheelDialog;->cancel()V

    .line 290
    return-void
.end method

.method public isCommentPage()Z
    .locals 1

    .prologue
    .line 293
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity;->isCommentPage:Z

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 238
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 239
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity;->requestWindowFeature(I)Z

    .line 240
    invoke-static {p0}, Lcom/lenovo/scg/gallery3d/weibo/views/PinWheelDialog;->getMyDialog(Landroid/content/Context;)Lcom/lenovo/scg/gallery3d/weibo/views/PinWheelDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity;->mDialog:Lcom/lenovo/scg/gallery3d/weibo/views/PinWheelDialog;

    .line 242
    sget-object v0, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumPoolType;->POOL_TYPE_WEIBO:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumPoolType;

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/net/NetThreadPool;->getInstance(Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumPoolType;)Lcom/lenovo/scg/gallery3d/net/NetThreadPool;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity;->mPool:Lcom/lenovo/scg/gallery3d/net/NetThreadPool;

    .line 243
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity;->mPool:Lcom/lenovo/scg/gallery3d/net/NetThreadPool;

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1}, Lcom/lenovo/scg/gallery3d/net/NetThreadPool;->setContext(Landroid/content/Context;I)V

    .line 244
    const-string v0, "com.lenovo.scg_preferences"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity;->mPreferences:Landroid/content/SharedPreferences;

    .line 245
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 250
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 251
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->cancelAllTask()V

    .line 252
    return-void
.end method

.method public setCommentPage(Z)V
    .locals 0
    .param p1, "isCommentPage"    # Z

    .prologue
    .line 297
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity;->isCommentPage:Z

    .line 298
    return-void
.end method

.method public setComment_last_id(J)V
    .locals 1
    .param p1, "comment_max_id"    # J

    .prologue
    .line 101
    iput-wide p1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity;->comment_max_id:J

    .line 102
    return-void
.end method

.method public setRepost_past_id(J)V
    .locals 1
    .param p1, "repost_max_id"    # J

    .prologue
    .line 79
    iput-wide p1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity;->repost_max_id:J

    .line 80
    return-void
.end method

.method protected showLoadingMoreAnim(Landroid/view/View;)V
    .locals 3
    .param p1, "mView"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 105
    if-eqz p1, :cond_1

    .line 106
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 107
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 110
    :cond_0
    const v1, 0x7f050049

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 111
    .local v0, "rotateAnimation":Landroid/view/animation/Animation;
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 112
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 114
    .end local v0    # "rotateAnimation":Landroid/view/animation/Animation;
    :cond_1
    return-void
.end method

.method public showPinWheelDialog()V
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity;->mDialog:Lcom/lenovo/scg/gallery3d/weibo/views/PinWheelDialog;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/weibo/views/PinWheelDialog;->show()V

    .line 286
    return-void
.end method

.method protected startFlashArrow(Landroid/view/View;)V
    .locals 4
    .param p1, "mView"    # Landroid/view/View;

    .prologue
    .line 124
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "isArrowHaveShowed"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 125
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "isArrowHaveShowed"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 126
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 127
    .local v0, "message":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 128
    const v1, 0x10011

    iput v1, v0, Landroid/os/Message;->what:I

    .line 129
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 131
    .end local v0    # "message":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method protected stopProgressBar(Landroid/widget/ProgressBar;)V
    .locals 2
    .param p1, "mProgressBar"    # Landroid/widget/ProgressBar;

    .prologue
    .line 225
    if-nez p1, :cond_0

    .line 226
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity;->mProgressBar:Landroid/widget/ProgressBar;

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity;->mProgressBar:Landroid/widget/ProgressBar;

    if-nez v0, :cond_1

    .line 233
    :goto_0
    return-void

    .line 229
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity;->mHandler:Landroid/os/Handler;

    const v1, 0x20003

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public stopTask()V
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity;->task:Lcom/lenovo/scg/gallery3d/net/NetThreadTask;

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity;->task:Lcom/lenovo/scg/gallery3d/net/NetThreadTask;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/net/NetThreadTask;->interrupt()V

    .line 282
    :cond_0
    return-void
.end method

.method protected updateProgressBar(Landroid/widget/ProgressBar;)V
    .locals 2
    .param p1, "mProgressBar"    # Landroid/widget/ProgressBar;

    .prologue
    const/4 v1, 0x0

    .line 218
    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity;->downloadFinish:Z

    .line 219
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity;->mProgressBar:Landroid/widget/ProgressBar;

    .line 220
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 221
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity;->mHandler:Landroid/os/Handler;

    const v1, 0x20001

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 222
    return-void
.end method
