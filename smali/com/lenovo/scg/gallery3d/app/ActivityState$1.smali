.class Lcom/lenovo/scg/gallery3d/app/ActivityState$1;
.super Landroid/content/BroadcastReceiver;
.source "ActivityState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/app/ActivityState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/app/ActivityState;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/app/ActivityState;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/ActivityState$1;->this$0:Lcom/lenovo/scg/gallery3d/app/ActivityState;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 163
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 165
    const-string/jumbo v2, "plugged"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 167
    .local v1, "plugged":Z
    :cond_0
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/ActivityState$1;->this$0:Lcom/lenovo/scg/gallery3d/app/ActivityState;

    # getter for: Lcom/lenovo/scg/gallery3d/app/ActivityState;->mPlugged:Z
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/app/ActivityState;->access$000(Lcom/lenovo/scg/gallery3d/app/ActivityState;)Z

    move-result v2

    if-eq v1, v2, :cond_1

    .line 168
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/ActivityState$1;->this$0:Lcom/lenovo/scg/gallery3d/app/ActivityState;

    # setter for: Lcom/lenovo/scg/gallery3d/app/ActivityState;->mPlugged:Z
    invoke-static {v2, v1}, Lcom/lenovo/scg/gallery3d/app/ActivityState;->access$002(Lcom/lenovo/scg/gallery3d/app/ActivityState;Z)Z

    .line 171
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/ActivityState$1;->this$0:Lcom/lenovo/scg/gallery3d/app/ActivityState;

    # invokes: Lcom/lenovo/scg/gallery3d/app/ActivityState;->setScreenFlags()V
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/app/ActivityState;->access$100(Lcom/lenovo/scg/gallery3d/app/ActivityState;)V

    .line 176
    .end local v1    # "plugged":Z
    :cond_1
    return-void
.end method
