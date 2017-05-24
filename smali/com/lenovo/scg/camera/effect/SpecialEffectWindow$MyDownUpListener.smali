.class Lcom/lenovo/scg/camera/effect/SpecialEffectWindow$MyDownUpListener;
.super Ljava/lang/Object;
.source "SpecialEffectWindow.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/ui/DownUpDetector$DownUpListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyDownUpListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;


# direct methods
.method private constructor <init>(Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;)V
    .locals 0

    .prologue
    .line 1124
    iput-object p1, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow$MyDownUpListener;->this$0:Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;Lcom/lenovo/scg/camera/effect/SpecialEffectWindow$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;
    .param p2, "x1"    # Lcom/lenovo/scg/camera/effect/SpecialEffectWindow$1;

    .prologue
    .line 1124
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow$MyDownUpListener;-><init>(Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;)V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 1128
    return-void
.end method

.method public onUp(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 1133
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 1134
    .local v0, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 1135
    .local v1, "y":F
    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow$MyDownUpListener;->this$0:Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;

    const/4 v3, 0x0

    # setter for: Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mIsDown:Z
    invoke-static {v2, v3}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->access$602(Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;Z)Z

    .line 1136
    const-string/jumbo v2, "tyl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MyDownUpListener  onUp x= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "y= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1138
    return-void
.end method
