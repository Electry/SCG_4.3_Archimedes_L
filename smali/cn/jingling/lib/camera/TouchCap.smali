.class public Lcn/jingling/lib/camera/TouchCap;
.super Lcn/jingling/lib/camera/WonderCamCap;
.source "TouchCap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/jingling/lib/camera/TouchCap$MyGestureDetector;,
        Lcn/jingling/lib/camera/TouchCap$OnTouchCapListener;,
        Lcn/jingling/lib/camera/TouchCap$TouchCapMode;
    }
.end annotation


# instance fields
.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mMode:Lcn/jingling/lib/camera/TouchCap$TouchCapMode;

.field private mOnTouchCapListener:Lcn/jingling/lib/camera/TouchCap$OnTouchCapListener;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcn/jingling/lib/camera/WonderCamCap;-><init>(Landroid/os/Handler;)V

    .line 21
    sget-object v0, Lcn/jingling/lib/camera/TouchCap$TouchCapMode;->MODE_SINGLETAP:Lcn/jingling/lib/camera/TouchCap$TouchCapMode;

    iput-object v0, p0, Lcn/jingling/lib/camera/TouchCap;->mMode:Lcn/jingling/lib/camera/TouchCap$TouchCapMode;

    .line 31
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcn/jingling/lib/camera/TouchCap$MyGestureDetector;

    invoke-direct {v1, p0}, Lcn/jingling/lib/camera/TouchCap$MyGestureDetector;-><init>(Lcn/jingling/lib/camera/TouchCap;)V

    invoke-direct {v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcn/jingling/lib/camera/TouchCap;->mGestureDetector:Landroid/view/GestureDetector;

    .line 32
    return-void
.end method

.method static synthetic access$0(Lcn/jingling/lib/camera/TouchCap;)Lcn/jingling/lib/camera/TouchCap$TouchCapMode;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcn/jingling/lib/camera/TouchCap;->mMode:Lcn/jingling/lib/camera/TouchCap$TouchCapMode;

    return-object v0
.end method

.method static synthetic access$1(Lcn/jingling/lib/camera/TouchCap;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcn/jingling/lib/camera/TouchCap;->takePicture()V

    return-void
.end method

.method static synthetic access$2(Lcn/jingling/lib/camera/TouchCap;)Lcn/jingling/lib/camera/TouchCap$OnTouchCapListener;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcn/jingling/lib/camera/TouchCap;->mOnTouchCapListener:Lcn/jingling/lib/camera/TouchCap$OnTouchCapListener;

    return-object v0
.end method

.method private takePicture()V
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lcn/jingling/lib/camera/TouchCap;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcn/jingling/lib/camera/TouchCap$1;

    invoke-direct {v1, p0}, Lcn/jingling/lib/camera/TouchCap$1;-><init>(Lcn/jingling/lib/camera/TouchCap;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 57
    const-string v0, "Touch"

    invoke-static {v0}, Lcn/jingling/lib/statistics/LogStoreUtils;->storeDataCommitOnce(Ljava/lang/String;)V

    .line 58
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 43
    iget-object v0, p0, Lcn/jingling/lib/camera/TouchCap;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setOnTouchCapListener(Lcn/jingling/lib/camera/TouchCap$OnTouchCapListener;)V
    .locals 0
    .param p1, "l"    # Lcn/jingling/lib/camera/TouchCap$OnTouchCapListener;

    .prologue
    .line 35
    iput-object p1, p0, Lcn/jingling/lib/camera/TouchCap;->mOnTouchCapListener:Lcn/jingling/lib/camera/TouchCap$OnTouchCapListener;

    .line 36
    return-void
.end method

.method public setTouchCapMode(Lcn/jingling/lib/camera/TouchCap$TouchCapMode;)V
    .locals 0
    .param p1, "type"    # Lcn/jingling/lib/camera/TouchCap$TouchCapMode;

    .prologue
    .line 39
    iput-object p1, p0, Lcn/jingling/lib/camera/TouchCap;->mMode:Lcn/jingling/lib/camera/TouchCap$TouchCapMode;

    .line 40
    return-void
.end method
