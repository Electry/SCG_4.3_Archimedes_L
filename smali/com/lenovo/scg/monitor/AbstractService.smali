.class public abstract Lcom/lenovo/scg/monitor/AbstractService;
.super Landroid/app/Service;
.source "AbstractService.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final refreshDelayTime:I = 0x5dc


# instance fields
.field protected mLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field protected mWindowManager:Landroid/view/WindowManager;

.field protected refreshHandler:Landroid/os/Handler;

.field private refreshRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 21
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 23
    iput-object v1, p0, Lcom/lenovo/scg/monitor/AbstractService;->mWindowManager:Landroid/view/WindowManager;

    .line 25
    iput-object v1, p0, Lcom/lenovo/scg/monitor/AbstractService;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 27
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/monitor/AbstractService;->refreshHandler:Landroid/os/Handler;

    .line 31
    iput-object v1, p0, Lcom/lenovo/scg/monitor/AbstractService;->refreshRunnable:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public abstract createFloatWindow()V
.end method

.method public abstract getFloatWindowLayoutView(I)Landroid/view/View;
.end method

.method public getRefreshHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lenovo/scg/monitor/AbstractService;->refreshHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getmLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x2

    .line 47
    iget-object v0, p0, Lcom/lenovo/scg/monitor/AbstractService;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/monitor/AbstractService;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 50
    iget-object v0, p0, Lcom/lenovo/scg/monitor/AbstractService;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7d2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 51
    iget-object v0, p0, Lcom/lenovo/scg/monitor/AbstractService;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 52
    iget-object v0, p0, Lcom/lenovo/scg/monitor/AbstractService;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 54
    iget-object v0, p0, Lcom/lenovo/scg/monitor/AbstractService;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 55
    iget-object v0, p0, Lcom/lenovo/scg/monitor/AbstractService;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 57
    iget-object v0, p0, Lcom/lenovo/scg/monitor/AbstractService;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 58
    iget-object v0, p0, Lcom/lenovo/scg/monitor/AbstractService;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 59
    iget-object v0, p0, Lcom/lenovo/scg/monitor/AbstractService;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/monitor/AbstractService;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method public getmLayoutParams(Lcom/lenovo/scg/monitor/Position;)Landroid/view/WindowManager$LayoutParams;
    .locals 2
    .param p1, "newPosition"    # Lcom/lenovo/scg/monitor/Position;

    .prologue
    .line 66
    if-nez p1, :cond_0

    .line 67
    const/4 v0, 0x0

    .line 74
    :goto_0
    return-object v0

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/monitor/AbstractService;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_1

    .line 70
    invoke-virtual {p0}, Lcom/lenovo/scg/monitor/AbstractService;->getmLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/monitor/AbstractService;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/monitor/AbstractService;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p1}, Lcom/lenovo/scg/monitor/Position;->getxPosition()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 73
    iget-object v0, p0, Lcom/lenovo/scg/monitor/AbstractService;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p1}, Lcom/lenovo/scg/monitor/Position;->getyPosition()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 74
    iget-object v0, p0, Lcom/lenovo/scg/monitor/AbstractService;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    goto :goto_0
.end method

.method protected getmWindowManager()Landroid/view/WindowManager;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/lenovo/scg/monitor/AbstractService;->mWindowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_0

    .line 106
    const-string/jumbo v0, "window"

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/monitor/AbstractService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/lenovo/scg/monitor/AbstractService;->mWindowManager:Landroid/view/WindowManager;

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/monitor/AbstractService;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method public abstract initViews()V
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 118
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract refreshFloatWindow(Landroid/view/View;Lcom/lenovo/scg/monitor/Position;)V
.end method

.method public setmLayoutParams(Landroid/view/WindowManager$LayoutParams;)V
    .locals 0
    .param p1, "mLayoutParams"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/lenovo/scg/monitor/AbstractService;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 79
    return-void
.end method

.method public setmWindowManager(Landroid/view/WindowManager;)V
    .locals 0
    .param p1, "mWindowManager"    # Landroid/view/WindowManager;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/lenovo/scg/monitor/AbstractService;->mWindowManager:Landroid/view/WindowManager;

    .line 113
    return-void
.end method

.method protected stopRefreshData()V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/lenovo/scg/monitor/AbstractService;->refreshRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/lenovo/scg/monitor/AbstractService;->refreshHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lenovo/scg/monitor/AbstractService;->refreshRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 93
    :cond_0
    return-void
.end method
