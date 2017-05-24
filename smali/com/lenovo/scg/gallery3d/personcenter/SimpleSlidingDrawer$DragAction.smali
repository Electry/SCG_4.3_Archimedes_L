.class abstract Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$DragAction;
.super Ljava/lang/Object;
.source "SimpleSlidingDrawer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "DragAction"
.end annotation


# instance fields
.field private mDraggable:Z

.field private mLastMotionX:F

.field private mOpening:Z

.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;


# direct methods
.method private constructor <init>(Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 77
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$DragAction;->this$0:Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$DragAction;->mLastMotionX:F

    .line 81
    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$DragAction;->mOpening:Z

    .line 83
    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$DragAction;->mDraggable:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;
    .param p2, "x1"    # Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$1;

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$DragAction;-><init>(Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;)V

    return-void
.end method

.method static synthetic access$300(Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$DragAction;)F
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$DragAction;

    .prologue
    .line 77
    iget v0, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$DragAction;->mLastMotionX:F

    return v0
.end method

.method static synthetic access$302(Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$DragAction;F)F
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$DragAction;
    .param p1, "x1"    # F

    .prologue
    .line 77
    iput p1, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$DragAction;->mLastMotionX:F

    return p1
.end method

.method static synthetic access$400(Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$DragAction;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$DragAction;

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$DragAction;->mDraggable:Z

    return v0
.end method

.method static synthetic access$402(Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$DragAction;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$DragAction;
    .param p1, "x1"    # Z

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$DragAction;->mDraggable:Z

    return p1
.end method

.method static synthetic access$600(Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$DragAction;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$DragAction;

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$DragAction;->mOpening:Z

    return v0
.end method

.method static synthetic access$602(Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$DragAction;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$DragAction;
    .param p1, "x1"    # Z

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$DragAction;->mOpening:Z

    return p1
.end method


# virtual methods
.method public abstract onTouchEvent(Landroid/view/MotionEvent;)Z
.end method
