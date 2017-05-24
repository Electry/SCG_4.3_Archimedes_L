.class public Lcom/lenovo/scg/gallery3d/app/PhotoPage$SingleTapUpHandler;
.super Landroid/os/Handler;
.source "PhotoPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/app/PhotoPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SingleTapUpHandler"
.end annotation


# static fields
.field public static final MSG_SINGLE_TAPUP:I = 0x3e9


# instance fields
.field private mx:I

.field private my:I

.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2302
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$SingleTapUpHandler;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 2305
    iput v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$SingleTapUpHandler;->mx:I

    .line 2306
    iput v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$SingleTapUpHandler;->my:I

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2315
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2316
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3e9

    if-ne v0, v1, :cond_0

    .line 2317
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$SingleTapUpHandler;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    iget v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$SingleTapUpHandler;->mx:I

    iget v2, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$SingleTapUpHandler;->my:I

    # invokes: Lcom/lenovo/scg/gallery3d/app/PhotoPage;->doOnSingleTapUp(II)V
    invoke-static {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->access$4200(Lcom/lenovo/scg/gallery3d/app/PhotoPage;II)V

    .line 2319
    :cond_0
    return-void
.end method

.method public setPos(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 2309
    iput p1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$SingleTapUpHandler;->mx:I

    .line 2310
    iput p2, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$SingleTapUpHandler;->my:I

    .line 2311
    return-void
.end method
