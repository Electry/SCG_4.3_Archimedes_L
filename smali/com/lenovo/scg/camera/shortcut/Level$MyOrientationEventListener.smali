.class Lcom/lenovo/scg/camera/shortcut/Level$MyOrientationEventListener;
.super Landroid/view/OrientationEventListener;
.source "Level.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/shortcut/Level;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyOrientationEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/shortcut/Level;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/camera/shortcut/Level;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/lenovo/scg/camera/shortcut/Level$MyOrientationEventListener;->this$0:Lcom/lenovo/scg/camera/shortcut/Level;

    .line 159
    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    .line 160
    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 4
    .param p1, "orientation"    # I

    .prologue
    .line 164
    const-string v0, "Level"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onOrientationChanged = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/Level$MyOrientationEventListener;->this$0:Lcom/lenovo/scg/camera/shortcut/Level;

    # setter for: Lcom/lenovo/scg/camera/shortcut/Level;->mOrientation:I
    invoke-static {v0, p1}, Lcom/lenovo/scg/camera/shortcut/Level;->access$002(Lcom/lenovo/scg/camera/shortcut/Level;I)I

    .line 166
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/Level$MyOrientationEventListener;->this$0:Lcom/lenovo/scg/camera/shortcut/Level;

    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/Level$MyOrientationEventListener;->this$0:Lcom/lenovo/scg/camera/shortcut/Level;

    # getter for: Lcom/lenovo/scg/camera/shortcut/Level;->mOrientation:I
    invoke-static {v1}, Lcom/lenovo/scg/camera/shortcut/Level;->access$000(Lcom/lenovo/scg/camera/shortcut/Level;)I

    move-result v1

    int-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    neg-double v2, v2

    # setter for: Lcom/lenovo/scg/camera/shortcut/Level;->mK:D
    invoke-static {v0, v2, v3}, Lcom/lenovo/scg/camera/shortcut/Level;->access$102(Lcom/lenovo/scg/camera/shortcut/Level;D)D

    .line 167
    const-string v0, "Level"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mK = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/Level$MyOrientationEventListener;->this$0:Lcom/lenovo/scg/camera/shortcut/Level;

    # getter for: Lcom/lenovo/scg/camera/shortcut/Level;->mK:D
    invoke-static {v2}, Lcom/lenovo/scg/camera/shortcut/Level;->access$100(Lcom/lenovo/scg/camera/shortcut/Level;)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/Level$MyOrientationEventListener;->this$0:Lcom/lenovo/scg/camera/shortcut/Level;

    # invokes: Lcom/lenovo/scg/camera/shortcut/Level;->calculateLine2()V
    invoke-static {v0}, Lcom/lenovo/scg/camera/shortcut/Level;->access$200(Lcom/lenovo/scg/camera/shortcut/Level;)V

    .line 169
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/Level$MyOrientationEventListener;->this$0:Lcom/lenovo/scg/camera/shortcut/Level;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/shortcut/Level;->postInvalidate()V

    .line 170
    return-void
.end method
