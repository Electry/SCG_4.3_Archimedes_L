.class Lcom/lenovo/scg/gallery3d/ui/GestureRecognizer$MyDownUpListener;
.super Ljava/lang/Object;
.source "GestureRecognizer.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/ui/DownUpDetector$DownUpListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/ui/GestureRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyDownUpListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/ui/GestureRecognizer;


# direct methods
.method private constructor <init>(Lcom/lenovo/scg/gallery3d/ui/GestureRecognizer;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/GestureRecognizer$MyDownUpListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/GestureRecognizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/scg/gallery3d/ui/GestureRecognizer;Lcom/lenovo/scg/gallery3d/ui/GestureRecognizer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/scg/gallery3d/ui/GestureRecognizer;
    .param p2, "x1"    # Lcom/lenovo/scg/gallery3d/ui/GestureRecognizer$1;

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/ui/GestureRecognizer$MyDownUpListener;-><init>(Lcom/lenovo/scg/gallery3d/ui/GestureRecognizer;)V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/GestureRecognizer$MyDownUpListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/GestureRecognizer;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/GestureRecognizer;->mListener:Lcom/lenovo/scg/gallery3d/ui/GestureRecognizer$Listener;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/GestureRecognizer;->access$300(Lcom/lenovo/scg/gallery3d/ui/GestureRecognizer;)Lcom/lenovo/scg/gallery3d/ui/GestureRecognizer$Listener;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/ui/GestureRecognizer$Listener;->onDown(FF)V

    .line 131
    return-void
.end method

.method public onUp(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/GestureRecognizer$MyDownUpListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/GestureRecognizer;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/GestureRecognizer;->mListener:Lcom/lenovo/scg/gallery3d/ui/GestureRecognizer$Listener;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/GestureRecognizer;->access$300(Lcom/lenovo/scg/gallery3d/ui/GestureRecognizer;)Lcom/lenovo/scg/gallery3d/ui/GestureRecognizer$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/ui/GestureRecognizer$Listener;->onUp()V

    .line 136
    return-void
.end method
