.class Lcom/lenovo/scg/camera/way/TimerWay$2;
.super Ljava/lang/Object;
.source "TimerWay.java"

# interfaces
.implements Lcom/lenovo/scg/camera/way/TimerUI$TimerLevelChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/way/TimerWay;->open()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/way/TimerWay;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/way/TimerWay;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/lenovo/scg/camera/way/TimerWay$2;->this$0:Lcom/lenovo/scg/camera/way/TimerWay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setLevel(I)V
    .locals 2
    .param p1, "level"    # I

    .prologue
    .line 163
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/TimerWay$2;->this$0:Lcom/lenovo/scg/camera/way/TimerWay;

    # setter for: Lcom/lenovo/scg/camera/way/TimerWay;->timerValue:I
    invoke-static {v0, p1}, Lcom/lenovo/scg/camera/way/TimerWay;->access$102(Lcom/lenovo/scg/camera/way/TimerWay;I)I

    .line 164
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/TimerWay$2;->this$0:Lcom/lenovo/scg/camera/way/TimerWay;

    iget-object v1, p0, Lcom/lenovo/scg/camera/way/TimerWay$2;->this$0:Lcom/lenovo/scg/camera/way/TimerWay;

    # getter for: Lcom/lenovo/scg/camera/way/TimerWay;->timerValue:I
    invoke-static {v1}, Lcom/lenovo/scg/camera/way/TimerWay;->access$100(Lcom/lenovo/scg/camera/way/TimerWay;)I

    move-result v1

    # setter for: Lcom/lenovo/scg/camera/way/TimerWay;->currentTime:I
    invoke-static {v0, v1}, Lcom/lenovo/scg/camera/way/TimerWay;->access$202(Lcom/lenovo/scg/camera/way/TimerWay;I)I

    .line 165
    return-void
.end method
