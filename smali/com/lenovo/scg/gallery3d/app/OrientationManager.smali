.class public Lcom/lenovo/scg/gallery3d/app/OrientationManager;
.super Ljava/lang/Object;
.source "OrientationManager.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/ui/OrientationSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/app/OrientationManager$MyOrientationEventListener;,
        Lcom/lenovo/scg/gallery3d/app/OrientationManager$Listener;
    }
.end annotation


# static fields
.field private static final ORIENTATION_HYSTERESIS:I = 0x5

.field private static final TAG:Ljava/lang/String; = "OrientationManager"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/app/OrientationManager$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mOrientation:I

.field private mOrientationCompensation:I

.field private mOrientationListener:Lcom/lenovo/scg/gallery3d/app/OrientationManager$MyOrientationEventListener;

.field private mOrientationLocked:Z

.field private mOrientationLockedState:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v1, 0x0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/app/OrientationManager;->mOrientationLocked:Z

    .line 49
    iput v1, p0, Lcom/lenovo/scg/gallery3d/app/OrientationManager;->mOrientationCompensation:I

    .line 62
    const/4 v0, -0x1

    iput v0, p0, Lcom/lenovo/scg/gallery3d/app/OrientationManager;->mOrientation:I

    .line 65
    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/app/OrientationManager;->mOrientationLockedState:Z

    .line 69
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/OrientationManager;->mActivity:Landroid/app/Activity;

    .line 70
    new-instance v0, Lcom/lenovo/scg/gallery3d/app/OrientationManager$MyOrientationEventListener;

    invoke-direct {v0, p0, p1}, Lcom/lenovo/scg/gallery3d/app/OrientationManager$MyOrientationEventListener;-><init>(Lcom/lenovo/scg/gallery3d/app/OrientationManager;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/OrientationManager;->mOrientationListener:Lcom/lenovo/scg/gallery3d/app/OrientationManager$MyOrientationEventListener;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/OrientationManager;->mListeners:Ljava/util/ArrayList;

    .line 72
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/gallery3d/app/OrientationManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/OrientationManager;

    .prologue
    .line 31
    iget v0, p0, Lcom/lenovo/scg/gallery3d/app/OrientationManager;->mOrientation:I

    return v0
.end method

.method static synthetic access$002(Lcom/lenovo/scg/gallery3d/app/OrientationManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/OrientationManager;
    .param p1, "x1"    # I

    .prologue
    .line 31
    iput p1, p0, Lcom/lenovo/scg/gallery3d/app/OrientationManager;->mOrientation:I

    return p1
.end method

.method static synthetic access$100(II)I
    .locals 1
    .param p0, "x0"    # I
    .param p1, "x1"    # I

    .prologue
    .line 31
    invoke-static {p0, p1}, Lcom/lenovo/scg/gallery3d/app/OrientationManager;->roundOrientation(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/lenovo/scg/gallery3d/app/OrientationManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/OrientationManager;

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/OrientationManager;->mOrientationLocked:Z

    return v0
.end method

.method static synthetic access$300(Lcom/lenovo/scg/gallery3d/app/OrientationManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/OrientationManager;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/OrientationManager;->updateCompensation()V

    return-void
.end method

.method private calculateCurrentScreenOrientation()I
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 157
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/OrientationManager;->getDisplayRotation()I

    move-result v0

    .line 159
    .local v0, "displayRotation":I
    const/16 v4, 0xb4

    if-ge v0, v4, :cond_0

    move v1, v2

    .line 160
    .local v1, "standard":Z
    :goto_0
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/OrientationManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 161
    if-eqz v1, :cond_1

    .line 170
    :goto_1
    return v3

    .end local v1    # "standard":Z
    :cond_0
    move v1, v3

    .line 159
    goto :goto_0

    .line 161
    .restart local v1    # "standard":Z
    :cond_1
    const/16 v3, 0x8

    goto :goto_1

    .line 163
    :cond_2
    const/16 v4, 0x5a

    if-eq v0, v4, :cond_3

    const/16 v4, 0x10e

    if-ne v0, v4, :cond_4

    .line 168
    :cond_3
    if-nez v1, :cond_5

    move v1, v2

    .line 170
    :cond_4
    :goto_2
    if-eqz v1, :cond_6

    :goto_3
    move v3, v2

    goto :goto_1

    :cond_5
    move v1, v3

    .line 168
    goto :goto_2

    .line 170
    :cond_6
    const/16 v2, 0x9

    goto :goto_3
.end method

.method private disableCompensation()V
    .locals 1

    .prologue
    .line 237
    iget v0, p0, Lcom/lenovo/scg/gallery3d/app/OrientationManager;->mOrientationCompensation:I

    if-eqz v0, :cond_0

    .line 238
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/app/OrientationManager;->mOrientationCompensation:I

    .line 239
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/OrientationManager;->notifyListeners()V

    .line 241
    :cond_0
    return-void
.end method

.method private static getDisplayRotation(Landroid/app/Activity;)I
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v1, 0x0

    .line 222
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 223
    .local v0, "rotation":I
    packed-switch v0, :pswitch_data_0

    .line 233
    :goto_0
    :pswitch_0
    return v1

    .line 227
    :pswitch_1
    const/16 v1, 0x5a

    goto :goto_0

    .line 229
    :pswitch_2
    const/16 v1, 0xb4

    goto :goto_0

    .line 231
    :pswitch_3
    const/16 v1, 0x10e

    goto :goto_0

    .line 223
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private notifyListeners()V
    .locals 4

    .prologue
    .line 137
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/OrientationManager;->mListeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 138
    const/4 v0, 0x0

    .local v0, "i":I
    :try_start_0
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/OrientationManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 139
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/OrientationManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/gallery3d/app/OrientationManager$Listener;

    invoke-interface {v2}, Lcom/lenovo/scg/gallery3d/app/OrientationManager$Listener;->onOrientationCompensationChanged()V

    .line 138
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 141
    :cond_0
    monitor-exit v3

    .line 142
    return-void

    .line 141
    .end local v1    # "n":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private static roundOrientation(II)I
    .locals 3
    .param p0, "orientation"    # I
    .param p1, "orientationHistory"    # I

    .prologue
    .line 207
    const/4 v0, 0x0

    .line 208
    .local v0, "changeOrientation":Z
    const/4 v2, -0x1

    if-ne p1, v2, :cond_1

    .line 209
    const/4 v0, 0x1

    .line 215
    :goto_0
    if-eqz v0, :cond_0

    .line 216
    add-int/lit8 v2, p0, 0x2d

    div-int/lit8 v2, v2, 0x5a

    mul-int/lit8 v2, v2, 0x5a

    rem-int/lit16 p1, v2, 0x168

    .line 218
    .end local p1    # "orientationHistory":I
    :cond_0
    return p1

    .line 211
    .restart local p1    # "orientationHistory":I
    :cond_1
    sub-int v2, p0, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 212
    .local v1, "dist":I
    rsub-int v2, v1, 0x168

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 213
    const/16 v2, 0x32

    if-lt v1, v2, :cond_2

    const/4 v0, 0x1

    :goto_1
    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private updateCompensation()V
    .locals 3

    .prologue
    .line 124
    iget v1, p0, Lcom/lenovo/scg/gallery3d/app/OrientationManager;->mOrientation:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    iget v1, p0, Lcom/lenovo/scg/gallery3d/app/OrientationManager;->mOrientation:I

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/OrientationManager;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/app/OrientationManager;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v2

    add-int/2addr v1, v2

    rem-int/lit16 v0, v1, 0x168

    .line 130
    .local v0, "orientationCompensation":I
    iget v1, p0, Lcom/lenovo/scg/gallery3d/app/OrientationManager;->mOrientationCompensation:I

    if-eq v1, v0, :cond_0

    .line 131
    iput v0, p0, Lcom/lenovo/scg/gallery3d/app/OrientationManager;->mOrientationCompensation:I

    .line 132
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/OrientationManager;->notifyListeners()V

    goto :goto_0
.end method


# virtual methods
.method public addListener(Lcom/lenovo/scg/gallery3d/app/OrientationManager$Listener;)V
    .locals 2
    .param p1, "listener"    # Lcom/lenovo/scg/gallery3d/app/OrientationManager$Listener;

    .prologue
    .line 85
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/OrientationManager;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 86
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/OrientationManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    monitor-exit v1

    .line 88
    return-void

    .line 87
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public forceUnlockOrientation()V
    .locals 2

    .prologue
    .line 259
    const-string v0, "jiaxiaowei"

    const-string v1, "forceUnlockOrientation----"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/OrientationManager;->mOrientationLocked:Z

    if-nez v0, :cond_0

    .line 265
    :goto_0
    return-void

    .line 261
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/OrientationManager;->mOrientationLocked:Z

    .line 262
    const-string v0, "OrientationManager"

    const-string/jumbo v1, "unlock orientation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/OrientationManager;->mActivity:Landroid/app/Activity;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 264
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/OrientationManager;->disableCompensation()V

    goto :goto_0
.end method

.method public getCompensation()I
    .locals 1

    .prologue
    .line 203
    iget v0, p0, Lcom/lenovo/scg/gallery3d/app/OrientationManager;->mOrientationCompensation:I

    return v0
.end method

.method public getDisplayRotation()I
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/OrientationManager;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/app/OrientationManager;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v0

    return v0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 269
    iget v0, p0, Lcom/lenovo/scg/gallery3d/app/OrientationManager;->mOrientation:I

    return v0
.end method

.method public lockOrientation()V
    .locals 2

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/OrientationManager;->mOrientationLocked:Z

    if-eqz v0, :cond_0

    .line 120
    :goto_0
    return-void

    .line 109
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/OrientationManager;->mOrientationLocked:Z

    .line 117
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/OrientationManager;->mActivity:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/OrientationManager;->calculateCurrentScreenOrientation()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 119
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/OrientationManager;->updateCompensation()V

    goto :goto_0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/OrientationManager;->mOrientationListener:Lcom/lenovo/scg/gallery3d/app/OrientationManager$MyOrientationEventListener;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/OrientationManager$MyOrientationEventListener;->disable()V

    .line 82
    return-void
.end method

.method public removeListener(Lcom/lenovo/scg/gallery3d/app/OrientationManager$Listener;)V
    .locals 2
    .param p1, "listener"    # Lcom/lenovo/scg/gallery3d/app/OrientationManager$Listener;

    .prologue
    .line 91
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/OrientationManager;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/OrientationManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 93
    monitor-exit v1

    .line 94
    return-void

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public restoreOrientationState()V
    .locals 2

    .prologue
    .line 249
    const-string v0, "jiaxiaowei"

    const-string/jumbo v1, "restoreOrientationState----"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/OrientationManager;->mOrientationLockedState:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 252
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/OrientationManager;->lockOrientation()V

    .line 256
    :goto_0
    return-void

    .line 254
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/OrientationManager;->unlockOrientation()V

    goto :goto_0
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/OrientationManager;->mOrientationListener:Lcom/lenovo/scg/gallery3d/app/OrientationManager$MyOrientationEventListener;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/OrientationManager$MyOrientationEventListener;->enable()V

    .line 78
    return-void
.end method

.method public saveOrientationState()V
    .locals 1

    .prologue
    .line 245
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/OrientationManager;->mOrientationLocked:Z

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/OrientationManager;->mOrientationLockedState:Z

    .line 246
    return-void
.end method

.method public unlockOrientation()V
    .locals 2

    .prologue
    .line 147
    const-string v0, "jiaxiaowei"

    const-string v1, "OrientationManager-------------unlockOrientation"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/OrientationManager;->mOrientationLocked:Z

    if-nez v0, :cond_0

    .line 154
    :goto_0
    return-void

    .line 150
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/OrientationManager;->mOrientationLocked:Z

    .line 151
    const-string v0, "OrientationManager"

    const-string/jumbo v1, "unlock orientation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/OrientationManager;->mActivity:Landroid/app/Activity;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 153
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/OrientationManager;->disableCompensation()V

    goto :goto_0
.end method
