.class Lcom/lenovo/scg/camera/tutorial/Tutorial$1;
.super Ljava/lang/Object;
.source "Tutorial.java"

# interfaces
.implements Lcom/lenovo/scg/camera/tutorial/TutorialScrollView$TutorialListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/tutorial/Tutorial;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/tutorial/Tutorial;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/tutorial/Tutorial;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/lenovo/scg/camera/tutorial/Tutorial$1;->this$0:Lcom/lenovo/scg/camera/tutorial/Tutorial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChanged(IIII)V
    .locals 1
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    .prologue
    .line 67
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/Tutorial$1;->this$0:Lcom/lenovo/scg/camera/tutorial/Tutorial;

    # invokes: Lcom/lenovo/scg/camera/tutorial/Tutorial;->startPageAnim(IIII)V
    invoke-static {v0, p1, p2, p3, p4}, Lcom/lenovo/scg/camera/tutorial/Tutorial;->access$000(Lcom/lenovo/scg/camera/tutorial/Tutorial;IIII)V

    .line 68
    return-void
.end method
