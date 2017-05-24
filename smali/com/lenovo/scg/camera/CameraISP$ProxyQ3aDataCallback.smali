.class Lcom/lenovo/scg/camera/CameraISP$ProxyQ3aDataCallback;
.super Ljava/lang/Object;
.source "CameraISP.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/CameraISP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProxyQ3aDataCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/CameraISP;


# direct methods
.method private constructor <init>(Lcom/lenovo/scg/camera/CameraISP;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/lenovo/scg/camera/CameraISP$ProxyQ3aDataCallback;->this$0:Lcom/lenovo/scg/camera/CameraISP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/scg/camera/CameraISP;Lcom/lenovo/scg/camera/CameraISP$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/scg/camera/CameraISP;
    .param p2, "x1"    # Lcom/lenovo/scg/camera/CameraISP$1;

    .prologue
    .line 141
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/CameraISP$ProxyQ3aDataCallback;-><init>(Lcom/lenovo/scg/camera/CameraISP;)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 158
    const-string v2, "CameraISP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ProxyQ3aDataCallback invoke"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    const/4 v1, 0x0

    .line 161
    .local v1, "result":Ljava/lang/Object;
    if-eqz p3, :cond_0

    .line 162
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "onQ3aData"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 163
    const/4 v2, 0x0

    aget-object v2, p3, v2

    check-cast v2, [B

    check-cast v2, [B

    const/4 v3, 0x1

    aget-object v3, p3, v3

    check-cast v3, Landroid/hardware/Camera;

    invoke-virtual {p0, v2, v3}, Lcom/lenovo/scg/camera/CameraISP$ProxyQ3aDataCallback;->onQ3aData([BLandroid/hardware/Camera;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    :cond_0
    :goto_0
    const/4 v2, 0x0

    return-object v2

    .line 166
    :catch_0
    move-exception v0

    .line 167
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "CameraISP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enableISPDataCallback ProxyQ3aDataCallback Exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method onQ3aData([BLandroid/hardware/Camera;)V
    .locals 3
    .param p1, "data"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 144
    const-string v0, "CameraISP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ProxyQ3aDataCallback onQ3aData "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraISP$ProxyQ3aDataCallback;->this$0:Lcom/lenovo/scg/camera/CameraISP;

    # invokes: Lcom/lenovo/scg/camera/CameraISP;->OnQ3aDataCallback([B)Z
    invoke-static {v0, p1}, Lcom/lenovo/scg/camera/CameraISP;->access$000(Lcom/lenovo/scg/camera/CameraISP;[B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 146
    const-string v0, "CameraISP"

    const-string v1, "ProxyQ3aDataCallback OnQ3aDataCallback error!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraISP$ProxyQ3aDataCallback;->this$0:Lcom/lenovo/scg/camera/CameraISP;

    # getter for: Lcom/lenovo/scg/camera/CameraISP;->mOnISPListener:Lcom/lenovo/scg/camera/CameraISP$onISPListener;
    invoke-static {v0}, Lcom/lenovo/scg/camera/CameraISP;->access$100(Lcom/lenovo/scg/camera/CameraISP;)Lcom/lenovo/scg/camera/CameraISP$onISPListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 151
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraISP$ProxyQ3aDataCallback;->this$0:Lcom/lenovo/scg/camera/CameraISP;

    # getter for: Lcom/lenovo/scg/camera/CameraISP;->mOnISPListener:Lcom/lenovo/scg/camera/CameraISP$onISPListener;
    invoke-static {v0}, Lcom/lenovo/scg/camera/CameraISP;->access$100(Lcom/lenovo/scg/camera/CameraISP;)Lcom/lenovo/scg/camera/CameraISP$onISPListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/lenovo/scg/camera/CameraISP$onISPListener;->onISPCallback([B)V

    .line 153
    :cond_1
    return-void
.end method
