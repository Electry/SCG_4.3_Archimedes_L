.class public Lcom/lenovo/scg/camera/ui/LayoutChangeHelper;
.super Ljava/lang/Object;
.source "LayoutChangeHelper.java"

# interfaces
.implements Lcom/lenovo/scg/camera/ui/LayoutChangeNotifier;


# instance fields
.field private mFirstTimeLayout:Z

.field private mListener:Lcom/lenovo/scg/camera/ui/LayoutChangeNotifier$Listener;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/lenovo/scg/camera/ui/LayoutChangeHelper;->mView:Landroid/view/View;

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/ui/LayoutChangeHelper;->mFirstTimeLayout:Z

    .line 32
    return-void
.end method


# virtual methods
.method public onLayout(ZIIII)V
    .locals 6
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 40
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/LayoutChangeHelper;->mListener:Lcom/lenovo/scg/camera/ui/LayoutChangeNotifier$Listener;

    if-nez v0, :cond_1

    .line 45
    :cond_0
    :goto_0
    return-void

    .line 41
    :cond_1
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/ui/LayoutChangeHelper;->mFirstTimeLayout:Z

    if-nez v0, :cond_2

    if-eqz p1, :cond_0

    .line 42
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/ui/LayoutChangeHelper;->mFirstTimeLayout:Z

    .line 43
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/LayoutChangeHelper;->mListener:Lcom/lenovo/scg/camera/ui/LayoutChangeNotifier$Listener;

    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/LayoutChangeHelper;->mView:Landroid/view/View;

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/lenovo/scg/camera/ui/LayoutChangeNotifier$Listener;->onLayoutChange(Landroid/view/View;IIII)V

    goto :goto_0
.end method

.method public setOnLayoutChangeListener(Lcom/lenovo/scg/camera/ui/LayoutChangeNotifier$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/lenovo/scg/camera/ui/LayoutChangeNotifier$Listener;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/lenovo/scg/camera/ui/LayoutChangeHelper;->mListener:Lcom/lenovo/scg/camera/ui/LayoutChangeNotifier$Listener;

    .line 37
    return-void
.end method
