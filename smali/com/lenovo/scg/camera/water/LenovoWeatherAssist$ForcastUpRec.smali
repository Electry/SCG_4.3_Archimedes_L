.class Lcom/lenovo/scg/camera/water/LenovoWeatherAssist$ForcastUpRec;
.super Landroid/content/BroadcastReceiver;
.source "LenovoWeatherAssist.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/water/LenovoWeatherAssist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ForcastUpRec"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/water/LenovoWeatherAssist;


# direct methods
.method private constructor <init>(Lcom/lenovo/scg/camera/water/LenovoWeatherAssist;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lcom/lenovo/scg/camera/water/LenovoWeatherAssist$ForcastUpRec;->this$0:Lcom/lenovo/scg/camera/water/LenovoWeatherAssist;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/scg/camera/water/LenovoWeatherAssist;Lcom/lenovo/scg/camera/water/LenovoWeatherAssist$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/scg/camera/water/LenovoWeatherAssist;
    .param p2, "x1"    # Lcom/lenovo/scg/camera/water/LenovoWeatherAssist$1;

    .prologue
    .line 176
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/water/LenovoWeatherAssist$ForcastUpRec;-><init>(Lcom/lenovo/scg/camera/water/LenovoWeatherAssist;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 182
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 183
    .local v0, "action":Ljava/lang/String;
    const-string v4, "LenovoWeatherAssist"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "\u6536\u5230\u5e7f\u64ad:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object v4, p0, Lcom/lenovo/scg/camera/water/LenovoWeatherAssist$ForcastUpRec;->this$0:Lcom/lenovo/scg/camera/water/LenovoWeatherAssist;

    invoke-virtual {v4}, Lcom/lenovo/scg/camera/water/LenovoWeatherAssist;->getLocalTodayDataFormDB()Ljava/lang/String;

    move-result-object v3

    .line 187
    .local v3, "weather":Ljava/lang/String;
    iget-object v4, p0, Lcom/lenovo/scg/camera/water/LenovoWeatherAssist$ForcastUpRec;->this$0:Lcom/lenovo/scg/camera/water/LenovoWeatherAssist;

    # getter for: Lcom/lenovo/scg/camera/water/LenovoWeatherAssist;->mListeners:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/lenovo/scg/camera/water/LenovoWeatherAssist;->access$100(Lcom/lenovo/scg/camera/water/LenovoWeatherAssist;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/camera/water/LenovoWeatherAssist$Listener;

    .line 188
    .local v2, "listener":Lcom/lenovo/scg/camera/water/LenovoWeatherAssist$Listener;
    invoke-interface {v2, v3}, Lcom/lenovo/scg/camera/water/LenovoWeatherAssist$Listener;->onForcastUpdate(Ljava/lang/String;)V

    goto :goto_0

    .line 190
    .end local v2    # "listener":Lcom/lenovo/scg/camera/water/LenovoWeatherAssist$Listener;
    :cond_0
    return-void
.end method
