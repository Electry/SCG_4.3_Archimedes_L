.class public Lcom/lenovo/scg/gallery3d/ui/DownUpDetector;
.super Ljava/lang/Object;
.source "DownUpDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/ui/DownUpDetector$DownUpListener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/lenovo/scg/gallery3d/ui/DownUpDetector$DownUpListener;

.field private mStillDown:Z


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/ui/DownUpDetector$DownUpListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/lenovo/scg/gallery3d/ui/DownUpDetector$DownUpListener;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/DownUpDetector;->mListener:Lcom/lenovo/scg/gallery3d/ui/DownUpDetector$DownUpListener;

    .line 36
    return-void
.end method

.method private setState(ZLandroid/view/MotionEvent;)V
    .locals 1
    .param p1, "down"    # Z
    .param p2, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/DownUpDetector;->mStillDown:Z

    if-ne p1, v0, :cond_0

    .line 46
    :goto_0
    return-void

    .line 40
    :cond_0
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/ui/DownUpDetector;->mStillDown:Z

    .line 41
    if-eqz p1, :cond_1

    .line 42
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/DownUpDetector;->mListener:Lcom/lenovo/scg/gallery3d/ui/DownUpDetector$DownUpListener;

    invoke-interface {v0, p2}, Lcom/lenovo/scg/gallery3d/ui/DownUpDetector$DownUpListener;->onDown(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 44
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/DownUpDetector;->mListener:Lcom/lenovo/scg/gallery3d/ui/DownUpDetector$DownUpListener;

    invoke-interface {v0, p2}, Lcom/lenovo/scg/gallery3d/ui/DownUpDetector$DownUpListener;->onUp(Landroid/view/MotionEvent;)V

    goto :goto_0
.end method


# virtual methods
.method public isDown()Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/DownUpDetector;->mStillDown:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 49
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    .line 60
    :goto_0
    :pswitch_0
    return-void

    .line 51
    :pswitch_1
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/lenovo/scg/gallery3d/ui/DownUpDetector;->setState(ZLandroid/view/MotionEvent;)V

    goto :goto_0

    .line 57
    :pswitch_2
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/lenovo/scg/gallery3d/ui/DownUpDetector;->setState(ZLandroid/view/MotionEvent;)V

    goto :goto_0

    .line 49
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
