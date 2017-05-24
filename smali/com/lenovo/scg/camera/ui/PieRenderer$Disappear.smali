.class Lcom/lenovo/scg/camera/ui/PieRenderer$Disappear;
.super Ljava/lang/Object;
.source "PieRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/ui/PieRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Disappear"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/ui/PieRenderer;


# direct methods
.method private constructor <init>(Lcom/lenovo/scg/camera/ui/PieRenderer;)V
    .locals 0

    .prologue
    .line 2237
    iput-object p1, p0, Lcom/lenovo/scg/camera/ui/PieRenderer$Disappear;->this$0:Lcom/lenovo/scg/camera/ui/PieRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/scg/camera/ui/PieRenderer;Lcom/lenovo/scg/camera/ui/PieRenderer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/scg/camera/ui/PieRenderer;
    .param p2, "x1"    # Lcom/lenovo/scg/camera/ui/PieRenderer$1;

    .prologue
    .line 2237
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/ui/PieRenderer$Disappear;-><init>(Lcom/lenovo/scg/camera/ui/PieRenderer;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2241
    const-string v0, "CAM_Pie"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Disappear(), mState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/PieRenderer$Disappear;->this$0:Lcom/lenovo/scg/camera/ui/PieRenderer;

    # getter for: Lcom/lenovo/scg/camera/ui/PieRenderer;->mState:I
    invoke-static {v2}, Lcom/lenovo/scg/camera/ui/PieRenderer;->access$1600(Lcom/lenovo/scg/camera/ui/PieRenderer;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2242
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer$Disappear;->this$0:Lcom/lenovo/scg/camera/ui/PieRenderer;

    # getter for: Lcom/lenovo/scg/camera/ui/PieRenderer;->mState:I
    invoke-static {v0}, Lcom/lenovo/scg/camera/ui/PieRenderer;->access$1600(Lcom/lenovo/scg/camera/ui/PieRenderer;)I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 2253
    :goto_0
    return-void

    .line 2247
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer$Disappear;->this$0:Lcom/lenovo/scg/camera/ui/PieRenderer;

    # getter for: Lcom/lenovo/scg/camera/ui/PieRenderer;->mListener:Lcom/lenovo/scg/camera/ui/PieRenderer$PieListener;
    invoke-static {v0}, Lcom/lenovo/scg/camera/ui/PieRenderer;->access$200(Lcom/lenovo/scg/camera/ui/PieRenderer;)Lcom/lenovo/scg/camera/ui/PieRenderer$PieListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2248
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer$Disappear;->this$0:Lcom/lenovo/scg/camera/ui/PieRenderer;

    # getter for: Lcom/lenovo/scg/camera/ui/PieRenderer;->mListener:Lcom/lenovo/scg/camera/ui/PieRenderer$PieListener;
    invoke-static {v0}, Lcom/lenovo/scg/camera/ui/PieRenderer;->access$200(Lcom/lenovo/scg/camera/ui/PieRenderer;)Lcom/lenovo/scg/camera/ui/PieRenderer$PieListener;

    move-result-object v0

    const-string v1, ""

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Lcom/lenovo/scg/camera/ui/PieRenderer$PieListener;->showFocusResultHint(Ljava/lang/String;I)V

    .line 2251
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer$Disappear;->this$0:Lcom/lenovo/scg/camera/ui/PieRenderer;

    # invokes: Lcom/lenovo/scg/camera/ui/PieRenderer;->startFadeOut()V
    invoke-static {v0}, Lcom/lenovo/scg/camera/ui/PieRenderer;->access$1700(Lcom/lenovo/scg/camera/ui/PieRenderer;)V

    goto :goto_0
.end method
