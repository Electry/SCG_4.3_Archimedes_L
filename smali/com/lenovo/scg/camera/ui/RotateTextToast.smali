.class public Lcom/lenovo/scg/camera/ui/RotateTextToast;
.super Ljava/lang/Object;
.source "RotateTextToast.java"


# static fields
.field private static final TOAST_DURATION:I = 0x1388


# instance fields
.field mHandler:Landroid/os/Handler;

.field mLayoutRoot:Landroid/view/ViewGroup;

.field private final mRunnable:Ljava/lang/Runnable;

.field mToast:Lcom/lenovo/scg/camera/ui/RotateLayout;


# direct methods
.method public constructor <init>(Landroid/app/Activity;II)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "textResourceId"    # I
    .param p3, "orientation"    # I

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v3, Lcom/lenovo/scg/camera/ui/RotateTextToast$1;

    invoke-direct {v3, p0}, Lcom/lenovo/scg/camera/ui/RotateTextToast$1;-><init>(Lcom/lenovo/scg/camera/ui/RotateTextToast;)V

    iput-object v3, p0, Lcom/lenovo/scg/camera/ui/RotateTextToast;->mRunnable:Ljava/lang/Runnable;

    .line 40
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/lenovo/scg/camera/ui/RotateTextToast;->mLayoutRoot:Landroid/view/ViewGroup;

    .line 41
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 42
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f04016c

    iget-object v4, p0, Lcom/lenovo/scg/camera/ui/RotateTextToast;->mLayoutRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 43
    .local v2, "v":Landroid/view/View;
    const v3, 0x7f100878

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/camera/ui/RotateLayout;

    iput-object v3, p0, Lcom/lenovo/scg/camera/ui/RotateTextToast;->mToast:Lcom/lenovo/scg/camera/ui/RotateLayout;

    .line 44
    iget-object v3, p0, Lcom/lenovo/scg/camera/ui/RotateTextToast;->mToast:Lcom/lenovo/scg/camera/ui/RotateLayout;

    const v4, 0x7f100367

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/camera/ui/RotateLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 45
    .local v1, "tv":Landroid/widget/TextView;
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 46
    iget-object v3, p0, Lcom/lenovo/scg/camera/ui/RotateTextToast;->mToast:Lcom/lenovo/scg/camera/ui/RotateLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, p3, v4}, Lcom/lenovo/scg/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 47
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/lenovo/scg/camera/ui/RotateTextToast;->mHandler:Landroid/os/Handler;

    .line 48
    return-void
.end method


# virtual methods
.method public show()V
    .locals 4

    .prologue
    .line 61
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/RotateTextToast;->mToast:Lcom/lenovo/scg/camera/ui/RotateLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/ui/RotateLayout;->setVisibility(I)V

    .line 62
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/RotateTextToast;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/RotateTextToast;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 63
    return-void
.end method
