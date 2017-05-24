.class Lcom/lenovo/scg/common/le3d/Le3dControllerProxy$2;
.super Ljava/lang/Object;
.source "Le3dControllerProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/common/le3d/Le3dControllerProxy;->sendFunction(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/common/le3d/Le3dControllerProxy;

.field final synthetic val$functionName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/common/le3d/Le3dControllerProxy;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/lenovo/scg/common/le3d/Le3dControllerProxy$2;->this$0:Lcom/lenovo/scg/common/le3d/Le3dControllerProxy;

    iput-object p2, p0, Lcom/lenovo/scg/common/le3d/Le3dControllerProxy$2;->val$functionName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 57
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dControllerProxy$2;->this$0:Lcom/lenovo/scg/common/le3d/Le3dControllerProxy;

    iget-object v1, p0, Lcom/lenovo/scg/common/le3d/Le3dControllerProxy$2;->this$0:Lcom/lenovo/scg/common/le3d/Le3dControllerProxy;

    iget-object v1, v1, Lcom/lenovo/scg/common/le3d/Le3dControllerProxy;->mController:Lcom/lenovo/scg/common/le3d/Le3dController;

    iget-object v2, p0, Lcom/lenovo/scg/common/le3d/Le3dControllerProxy$2;->val$functionName:Ljava/lang/String;

    # invokes: Lcom/lenovo/scg/common/le3d/Le3dControllerProxy;->reflectFunction(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V
    invoke-static {v0, v1, v2, v3, v3}, Lcom/lenovo/scg/common/le3d/Le3dControllerProxy;->access$000(Lcom/lenovo/scg/common/le3d/Le3dControllerProxy;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 58
    return-void
.end method
