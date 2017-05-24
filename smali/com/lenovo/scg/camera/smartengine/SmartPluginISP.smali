.class public Lcom/lenovo/scg/camera/smartengine/SmartPluginISP;
.super Lcom/lenovo/scg/camera/smartengine/SmartPluginBase;
.source "SmartPluginISP.java"

# interfaces
.implements Lcom/lenovo/scg/camera/CameraISP$onISPListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/camera/smartengine/SmartPluginISP$onISPDataListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "[smart_app]SmartPluginISP"


# instance fields
.field private mCameraISP:Lcom/lenovo/scg/camera/CameraISP;

.field private mOnISPDataListener:Lcom/lenovo/scg/camera/smartengine/SmartPluginISP$onISPDataListener;

.field private m_bRuning:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 22
    invoke-direct {p0}, Lcom/lenovo/scg/camera/smartengine/SmartPluginBase;-><init>()V

    .line 9
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartPluginISP;->m_bRuning:Z

    .line 10
    iput-object v1, p0, Lcom/lenovo/scg/camera/smartengine/SmartPluginISP;->mCameraISP:Lcom/lenovo/scg/camera/CameraISP;

    .line 11
    iput-object v1, p0, Lcom/lenovo/scg/camera/smartengine/SmartPluginISP;->mOnISPDataListener:Lcom/lenovo/scg/camera/smartengine/SmartPluginISP$onISPDataListener;

    .line 23
    const-string v0, "[smart_app]SmartPluginISP"

    const-string v1, "SmartPluginISP"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    invoke-static {}, Lcom/lenovo/scg/camera/CameraISP;->getInstance()Lcom/lenovo/scg/camera/CameraISP;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartPluginISP;->mCameraISP:Lcom/lenovo/scg/camera/CameraISP;

    .line 25
    return-void
.end method


# virtual methods
.method public onISPCallback([B)V
    .locals 2
    .param p1, "data"    # [B

    .prologue
    .line 57
    const-string v0, "[smart_app]SmartPluginISP"

    const-string/jumbo v1, "onISPCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartPluginISP;->m_bRuning:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartPluginISP;->mOnISPDataListener:Lcom/lenovo/scg/camera/smartengine/SmartPluginISP$onISPDataListener;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartPluginISP;->mOnISPDataListener:Lcom/lenovo/scg/camera/smartengine/SmartPluginISP$onISPDataListener;

    invoke-interface {v0, p1}, Lcom/lenovo/scg/camera/smartengine/SmartPluginISP$onISPDataListener;->onISPDataCallback([B)V

    .line 63
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartPluginISP;->m_bRuning:Z

    if-nez v0, :cond_1

    .line 41
    :cond_0
    :goto_0
    return-void

    .line 34
    :cond_1
    const-string v0, "[smart_app]SmartPluginISP"

    const-string/jumbo v1, "pause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartPluginISP;->m_bRuning:Z

    .line 36
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartPluginISP;->mCameraISP:Lcom/lenovo/scg/camera/CameraISP;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/CameraISP;->isRuning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartPluginISP;->mCameraISP:Lcom/lenovo/scg/camera/CameraISP;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/CameraISP;->setOnISPListener(Lcom/lenovo/scg/camera/CameraISP$onISPListener;)V

    goto :goto_0
.end method

.method public setOnISPDataListener(Lcom/lenovo/scg/camera/smartengine/SmartPluginISP$onISPDataListener;)V
    .locals 2
    .param p1, "l"    # Lcom/lenovo/scg/camera/smartengine/SmartPluginISP$onISPDataListener;

    .prologue
    .line 18
    const-string v0, "[smart_app]SmartPluginISP"

    const-string/jumbo v1, "setOnISPDataListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    iput-object p1, p0, Lcom/lenovo/scg/camera/smartengine/SmartPluginISP;->mOnISPDataListener:Lcom/lenovo/scg/camera/smartengine/SmartPluginISP$onISPDataListener;

    .line 20
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartPluginISP;->m_bRuning:Z

    if-eqz v0, :cond_0

    .line 54
    :goto_0
    return-void

    .line 50
    :cond_0
    const-string v0, "[smart_app]SmartPluginISP"

    const-string/jumbo v1, "start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartPluginISP;->m_bRuning:Z

    .line 53
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartPluginISP;->mCameraISP:Lcom/lenovo/scg/camera/CameraISP;

    invoke-virtual {v0, p0}, Lcom/lenovo/scg/camera/CameraISP;->setOnISPListener(Lcom/lenovo/scg/camera/CameraISP$onISPListener;)V

    goto :goto_0
.end method
