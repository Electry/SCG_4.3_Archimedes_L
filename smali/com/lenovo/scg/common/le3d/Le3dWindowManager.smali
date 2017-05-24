.class public Lcom/lenovo/scg/common/le3d/Le3dWindowManager;
.super Ljava/lang/Object;
.source "Le3dWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/common/le3d/Le3dWindowManager$MyLe3dWindow;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Le3dWindowManager"


# instance fields
.field private mCreateWindow:Z

.field private mMyLe3dWindowList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/common/le3d/Le3dWindowManager$MyLe3dWindow;",
            ">;"
        }
    .end annotation
.end field

.field private final mSemaphore:Ljava/util/concurrent/Semaphore;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/lenovo/scg/common/le3d/Le3dWindowManager;->mMyLe3dWindowList:Ljava/util/ArrayList;

    .line 19
    new-instance v1, Ljava/util/concurrent/Semaphore;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v1, p0, Lcom/lenovo/scg/common/le3d/Le3dWindowManager;->mSemaphore:Ljava/util/concurrent/Semaphore;

    .line 21
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/scg/common/le3d/Le3dWindowManager;->mSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lenovo/scg/common/le3d/Le3dWindowManager;->mCreateWindow:Z

    .line 28
    return-void

    .line 22
    :catch_0
    move-exception v0

    .line 24
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public destroyWindow(Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;)V
    .locals 8
    .param p1, "type"    # Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;

    .prologue
    .line 137
    if-eqz p1, :cond_4

    .line 138
    monitor-enter p0

    .line 139
    const/4 v0, 0x0

    .line 140
    .local v0, "destroyWindow":Lcom/lenovo/scg/common/le3d/Le3dWindowManager$MyLe3dWindow;
    :try_start_0
    iget-object v5, p0, Lcom/lenovo/scg/common/le3d/Le3dWindowManager;->mMyLe3dWindowList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 141
    .local v4, "myLe3dWindowListSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_1

    .line 142
    iget-object v5, p0, Lcom/lenovo/scg/common/le3d/Le3dWindowManager;->mMyLe3dWindowList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/common/le3d/Le3dWindowManager$MyLe3dWindow;

    .line 143
    .local v3, "myLe3dWindow":Lcom/lenovo/scg/common/le3d/Le3dWindowManager$MyLe3dWindow;
    if-eqz v3, :cond_0

    iget-object v5, v3, Lcom/lenovo/scg/common/le3d/Le3dWindowManager$MyLe3dWindow;->mType:Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;

    invoke-virtual {v5}, Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 144
    move-object v0, v3

    .line 141
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 147
    .end local v3    # "myLe3dWindow":Lcom/lenovo/scg/common/le3d/Le3dWindowManager$MyLe3dWindow;
    :cond_1
    if-eqz v0, :cond_3

    .line 148
    iget-object v2, v0, Lcom/lenovo/scg/common/le3d/Le3dWindowManager$MyLe3dWindow;->mWindow:Lcom/lenovo/scg/common/le3d/Le3dWindow;

    .line 149
    .local v2, "le3dWindow":Lcom/lenovo/scg/common/le3d/Le3dWindow;
    const-string v5, "jiaxiaowei"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "destroyWindow in Le3dWindowManager le3dWindow:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    if-eqz v2, :cond_2

    .line 151
    invoke-virtual {v2}, Lcom/lenovo/scg/common/le3d/Le3dWindow;->destroy()V

    .line 152
    const/4 v2, 0x0

    .line 154
    :cond_2
    iget-object v5, p0, Lcom/lenovo/scg/common/le3d/Le3dWindowManager;->mMyLe3dWindowList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 157
    .end local v2    # "le3dWindow":Lcom/lenovo/scg/common/le3d/Le3dWindow;
    :cond_3
    monitor-exit p0

    .line 159
    .end local v0    # "destroyWindow":Lcom/lenovo/scg/common/le3d/Le3dWindowManager$MyLe3dWindow;
    .end local v1    # "i":I
    .end local v4    # "myLe3dWindowListSize":I
    :cond_4
    return-void

    .line 157
    .restart local v0    # "destroyWindow":Lcom/lenovo/scg/common/le3d/Le3dWindowManager$MyLe3dWindow;
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public declared-synchronized doCreateLe3dWindowIfHaveRequest(Lcom/lenovo/scg/common/le3d/Le3dContext;Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewInterface;I)V
    .locals 6
    .param p1, "context"    # Lcom/lenovo/scg/common/le3d/Le3dContext;
    .param p2, "glSurfaceView"    # Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewInterface;
    .param p3, "orientation"    # I

    .prologue
    .line 82
    monitor-enter p0

    :try_start_0
    iget-boolean v4, p0, Lcom/lenovo/scg/common/le3d/Le3dWindowManager;->mCreateWindow:Z

    if-eqz v4, :cond_2

    .line 84
    iget-object v4, p0, Lcom/lenovo/scg/common/le3d/Le3dWindowManager;->mMyLe3dWindowList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 85
    .local v3, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 86
    iget-object v4, p0, Lcom/lenovo/scg/common/le3d/Le3dWindowManager;->mMyLe3dWindowList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/common/le3d/Le3dWindowManager$MyLe3dWindow;

    .line 87
    .local v2, "myLe3dWindow":Lcom/lenovo/scg/common/le3d/Le3dWindowManager$MyLe3dWindow;
    if-eqz v2, :cond_0

    .line 88
    iget-object v1, v2, Lcom/lenovo/scg/common/le3d/Le3dWindowManager$MyLe3dWindow;->mWindow:Lcom/lenovo/scg/common/le3d/Le3dWindow;

    .line 89
    .local v1, "le3dWindow":Lcom/lenovo/scg/common/le3d/Le3dWindow;
    if-nez v1, :cond_0

    .line 90
    iget-object v4, v2, Lcom/lenovo/scg/common/le3d/Le3dWindowManager$MyLe3dWindow;->mType:Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;

    iget-object v5, v2, Lcom/lenovo/scg/common/le3d/Le3dWindowManager$MyLe3dWindow;->mController:Lcom/lenovo/scg/common/le3d/Le3dController;

    invoke-static {v4, p1, p2, v5, p3}, Lcom/lenovo/scg/common/le3d/Le3dWindowFactory;->createLe3dWindow(Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;Lcom/lenovo/scg/common/le3d/Le3dContext;Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewInterface;Lcom/lenovo/scg/common/le3d/Le3dController;I)Lcom/lenovo/scg/common/le3d/Le3dWindow;

    move-result-object v4

    iput-object v4, v2, Lcom/lenovo/scg/common/le3d/Le3dWindowManager$MyLe3dWindow;->mWindow:Lcom/lenovo/scg/common/le3d/Le3dWindow;

    .line 85
    .end local v1    # "le3dWindow":Lcom/lenovo/scg/common/le3d/Le3dWindow;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 95
    .end local v2    # "myLe3dWindow":Lcom/lenovo/scg/common/le3d/Le3dWindowManager$MyLe3dWindow;
    :cond_1
    iget-object v4, p0, Lcom/lenovo/scg/common/le3d/Le3dWindowManager;->mSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->release()V

    .line 96
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/lenovo/scg/common/le3d/Le3dWindowManager;->mCreateWindow:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    .end local v0    # "i":I
    .end local v3    # "size":I
    :cond_2
    monitor-exit p0

    return-void

    .line 82
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public getVisibleWindow()Lcom/lenovo/scg/common/le3d/Le3dWindow;
    .locals 5

    .prologue
    .line 162
    monitor-enter p0

    .line 163
    :try_start_0
    iget-object v4, p0, Lcom/lenovo/scg/common/le3d/Le3dWindowManager;->mMyLe3dWindowList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 164
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 165
    iget-object v4, p0, Lcom/lenovo/scg/common/le3d/Le3dWindowManager;->mMyLe3dWindowList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/common/le3d/Le3dWindowManager$MyLe3dWindow;

    .line 166
    .local v1, "myLe3dWindow":Lcom/lenovo/scg/common/le3d/Le3dWindowManager$MyLe3dWindow;
    if-eqz v1, :cond_0

    .line 167
    iget-object v3, v1, Lcom/lenovo/scg/common/le3d/Le3dWindowManager$MyLe3dWindow;->mWindow:Lcom/lenovo/scg/common/le3d/Le3dWindow;

    .line 168
    .local v3, "window":Lcom/lenovo/scg/common/le3d/Le3dWindow;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/lenovo/scg/common/le3d/Le3dWindow;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 169
    monitor-exit p0

    .line 173
    .end local v1    # "myLe3dWindow":Lcom/lenovo/scg/common/le3d/Le3dWindowManager$MyLe3dWindow;
    .end local v3    # "window":Lcom/lenovo/scg/common/le3d/Le3dWindow;
    :goto_1
    return-object v3

    .line 164
    .restart local v1    # "myLe3dWindow":Lcom/lenovo/scg/common/le3d/Le3dWindowManager$MyLe3dWindow;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 173
    .end local v1    # "myLe3dWindow":Lcom/lenovo/scg/common/le3d/Le3dWindowManager$MyLe3dWindow;
    :cond_1
    const/4 v3, 0x0

    monitor-exit p0

    goto :goto_1

    .line 174
    .end local v0    # "i":I
    .end local v2    # "size":I
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public getWindow(Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;)Lcom/lenovo/scg/common/le3d/Le3dWindow;
    .locals 5
    .param p1, "type"    # Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;

    .prologue
    .line 178
    monitor-enter p0

    .line 179
    :try_start_0
    iget-object v3, p0, Lcom/lenovo/scg/common/le3d/Le3dWindowManager;->mMyLe3dWindowList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 180
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 181
    iget-object v3, p0, Lcom/lenovo/scg/common/le3d/Le3dWindowManager;->mMyLe3dWindowList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/common/le3d/Le3dWindowManager$MyLe3dWindow;

    .line 182
    .local v1, "myLe3dWindow":Lcom/lenovo/scg/common/le3d/Le3dWindowManager$MyLe3dWindow;
    if-eqz v1, :cond_0

    .line 183
    iget-object v3, v1, Lcom/lenovo/scg/common/le3d/Le3dWindowManager$MyLe3dWindow;->mType:Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;

    invoke-virtual {v3}, Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 184
    iget-object v3, v1, Lcom/lenovo/scg/common/le3d/Le3dWindowManager$MyLe3dWindow;->mWindow:Lcom/lenovo/scg/common/le3d/Le3dWindow;

    monitor-exit p0

    .line 188
    .end local v1    # "myLe3dWindow":Lcom/lenovo/scg/common/le3d/Le3dWindowManager$MyLe3dWindow;
    :goto_1
    return-object v3

    .line 180
    .restart local v1    # "myLe3dWindow":Lcom/lenovo/scg/common/le3d/Le3dWindowManager$MyLe3dWindow;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 188
    .end local v1    # "myLe3dWindow":Lcom/lenovo/scg/common/le3d/Le3dWindowManager$MyLe3dWindow;
    :cond_1
    const/4 v3, 0x0

    monitor-exit p0

    goto :goto_1

    .line 189
    .end local v0    # "i":I
    .end local v2    # "size":I
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public hideWindow(Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;)V
    .locals 6
    .param p1, "type"    # Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;

    .prologue
    .line 101
    if-eqz p1, :cond_0

    .line 102
    monitor-enter p0

    .line 103
    :try_start_0
    iget-object v4, p0, Lcom/lenovo/scg/common/le3d/Le3dWindowManager;->mMyLe3dWindowList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 104
    .local v3, "myLe3dWindowListSize":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_2

    .line 105
    iget-object v4, p0, Lcom/lenovo/scg/common/le3d/Le3dWindowManager;->mMyLe3dWindowList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/common/le3d/Le3dWindowManager$MyLe3dWindow;

    .line 106
    .local v2, "myLe3dWindow":Lcom/lenovo/scg/common/le3d/Le3dWindowManager$MyLe3dWindow;
    if-eqz v2, :cond_1

    iget-object v4, v2, Lcom/lenovo/scg/common/le3d/Le3dWindowManager$MyLe3dWindow;->mType:Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;

    invoke-virtual {v4}, Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 107
    iget-object v1, v2, Lcom/lenovo/scg/common/le3d/Le3dWindowManager$MyLe3dWindow;->mWindow:Lcom/lenovo/scg/common/le3d/Le3dWindow;

    .line 108
    .local v1, "le3dWindow":Lcom/lenovo/scg/common/le3d/Le3dWindow;
    if-eqz v1, :cond_1

    .line 109
    invoke-virtual {v1}, Lcom/lenovo/scg/common/le3d/Le3dWindow;->hide()V

    .line 110
    monitor-exit p0

    .line 116
    .end local v0    # "i":I
    .end local v1    # "le3dWindow":Lcom/lenovo/scg/common/le3d/Le3dWindow;
    .end local v2    # "myLe3dWindow":Lcom/lenovo/scg/common/le3d/Le3dWindowManager$MyLe3dWindow;
    .end local v3    # "myLe3dWindowListSize":I
    :cond_0
    :goto_1
    return-void

    .line 104
    .restart local v0    # "i":I
    .restart local v2    # "myLe3dWindow":Lcom/lenovo/scg/common/le3d/Le3dWindowManager$MyLe3dWindow;
    .restart local v3    # "myLe3dWindowListSize":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 114
    .end local v2    # "myLe3dWindow":Lcom/lenovo/scg/common/le3d/Le3dWindowManager$MyLe3dWindow;
    :cond_2
    monitor-exit p0

    goto :goto_1

    .end local v0    # "i":I
    .end local v3    # "myLe3dWindowListSize":I
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public declared-synchronized requestCreateLe3dWindow(Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;Lcom/lenovo/scg/common/le3d/Le3dController;Landroid/opengl/GLSurfaceView;)Z
    .locals 8
    .param p1, "type"    # Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;
    .param p2, "controller"    # Lcom/lenovo/scg/common/le3d/Le3dController;
    .param p3, "glsfcView"    # Landroid/opengl/GLSurfaceView;

    .prologue
    .line 36
    monitor-enter p0

    :try_start_0
    iget-boolean v6, p0, Lcom/lenovo/scg/common/le3d/Le3dWindowManager;->mCreateWindow:Z

    if-eqz v6, :cond_0

    .line 38
    invoke-virtual {p3}, Landroid/opengl/GLSurfaceView;->requestRender()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    :try_start_1
    iget-object v6, p0, Lcom/lenovo/scg/common/le3d/Le3dWindowManager;->mSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v6}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    :goto_0
    :try_start_2
    const-string v6, "Le3dWindowManager"

    const-string/jumbo v7, "requestCreateLe3dWindow twice create!!!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    :cond_0
    const/4 v0, 0x1

    .line 48
    .local v0, "bRet":Z
    iget-object v6, p0, Lcom/lenovo/scg/common/le3d/Le3dWindowManager;->mMyLe3dWindowList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 49
    .local v5, "windowSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v5, :cond_2

    .line 50
    iget-object v6, p0, Lcom/lenovo/scg/common/le3d/Le3dWindowManager;->mMyLe3dWindowList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/common/le3d/Le3dWindowManager$MyLe3dWindow;

    .line 51
    .local v3, "myLe3dWindow":Lcom/lenovo/scg/common/le3d/Le3dWindowManager$MyLe3dWindow;
    iget-object v6, v3, Lcom/lenovo/scg/common/le3d/Le3dWindowManager$MyLe3dWindow;->mType:Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;

    invoke-virtual {v6}, Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 52
    iget-object v4, v3, Lcom/lenovo/scg/common/le3d/Le3dWindowManager$MyLe3dWindow;->mWindow:Lcom/lenovo/scg/common/le3d/Le3dWindow;

    .line 53
    .local v4, "window":Lcom/lenovo/scg/common/le3d/Le3dWindow;
    if-eqz v4, :cond_1

    .line 54
    const/4 v6, 0x1

    iput-boolean v6, v4, Lcom/lenovo/scg/common/le3d/Le3dWindow;->mIsVisible:Z

    .line 56
    :cond_1
    const/4 v0, 0x0

    .line 68
    .end local v3    # "myLe3dWindow":Lcom/lenovo/scg/common/le3d/Le3dWindowManager$MyLe3dWindow;
    .end local v4    # "window":Lcom/lenovo/scg/common/le3d/Le3dWindow;
    :cond_2
    if-eqz v0, :cond_3

    .line 70
    new-instance v4, Lcom/lenovo/scg/common/le3d/Le3dWindowManager$MyLe3dWindow;

    invoke-direct {v4, p0, p1, p2}, Lcom/lenovo/scg/common/le3d/Le3dWindowManager$MyLe3dWindow;-><init>(Lcom/lenovo/scg/common/le3d/Le3dWindowManager;Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;Lcom/lenovo/scg/common/le3d/Le3dController;)V

    .line 71
    .local v4, "window":Lcom/lenovo/scg/common/le3d/Le3dWindowManager$MyLe3dWindow;
    iget-object v6, p0, Lcom/lenovo/scg/common/le3d/Le3dWindowManager;->mMyLe3dWindowList:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/lenovo/scg/common/le3d/Le3dWindowManager;->mCreateWindow:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 74
    .end local v4    # "window":Lcom/lenovo/scg/common/le3d/Le3dWindowManager$MyLe3dWindow;
    :cond_3
    monitor-exit p0

    return v0

    .line 41
    .end local v0    # "bRet":Z
    .end local v2    # "i":I
    .end local v5    # "windowSize":I
    :catch_0
    move-exception v1

    .line 43
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 36
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 49
    .restart local v0    # "bRet":Z
    .restart local v2    # "i":I
    .restart local v3    # "myLe3dWindow":Lcom/lenovo/scg/common/le3d/Le3dWindowManager$MyLe3dWindow;
    .restart local v5    # "windowSize":I
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public showWindow(Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;I)V
    .locals 6
    .param p1, "type"    # Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;
    .param p2, "orientation"    # I

    .prologue
    .line 119
    if-eqz p1, :cond_0

    .line 120
    monitor-enter p0

    .line 121
    :try_start_0
    iget-object v4, p0, Lcom/lenovo/scg/common/le3d/Le3dWindowManager;->mMyLe3dWindowList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 122
    .local v3, "myLe3dWindowListSize":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_2

    .line 123
    iget-object v4, p0, Lcom/lenovo/scg/common/le3d/Le3dWindowManager;->mMyLe3dWindowList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/common/le3d/Le3dWindowManager$MyLe3dWindow;

    .line 124
    .local v2, "myLe3dWindow":Lcom/lenovo/scg/common/le3d/Le3dWindowManager$MyLe3dWindow;
    if-eqz v2, :cond_1

    iget-object v4, v2, Lcom/lenovo/scg/common/le3d/Le3dWindowManager$MyLe3dWindow;->mType:Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;

    invoke-virtual {v4}, Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 125
    iget-object v1, v2, Lcom/lenovo/scg/common/le3d/Le3dWindowManager$MyLe3dWindow;->mWindow:Lcom/lenovo/scg/common/le3d/Le3dWindow;

    .line 126
    .local v1, "le3dWindow":Lcom/lenovo/scg/common/le3d/Le3dWindow;
    if-eqz v1, :cond_1

    .line 127
    invoke-virtual {v1, p2}, Lcom/lenovo/scg/common/le3d/Le3dWindow;->show(I)V

    .line 128
    monitor-exit p0

    .line 134
    .end local v0    # "i":I
    .end local v1    # "le3dWindow":Lcom/lenovo/scg/common/le3d/Le3dWindow;
    .end local v2    # "myLe3dWindow":Lcom/lenovo/scg/common/le3d/Le3dWindowManager$MyLe3dWindow;
    .end local v3    # "myLe3dWindowListSize":I
    :cond_0
    :goto_1
    return-void

    .line 122
    .restart local v0    # "i":I
    .restart local v2    # "myLe3dWindow":Lcom/lenovo/scg/common/le3d/Le3dWindowManager$MyLe3dWindow;
    .restart local v3    # "myLe3dWindowListSize":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 132
    .end local v2    # "myLe3dWindow":Lcom/lenovo/scg/common/le3d/Le3dWindowManager$MyLe3dWindow;
    :cond_2
    monitor-exit p0

    goto :goto_1

    .end local v0    # "i":I
    .end local v3    # "myLe3dWindowListSize":I
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method
