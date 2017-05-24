.class Lcom/lenovo/scg/camera/tutorial/Tutorial$2;
.super Ljava/lang/Object;
.source "Tutorial.java"

# interfaces
.implements Lcom/lenovo/scg/camera/tutorial/TutorialScrollView$TutorialPageChangeListener;


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
    .line 71
    iput-object p1, p0, Lcom/lenovo/scg/camera/tutorial/Tutorial$2;->this$0:Lcom/lenovo/scg/camera/tutorial/Tutorial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageChange(I)V
    .locals 1
    .param p1, "currentPage"    # I

    .prologue
    .line 75
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/Tutorial$2;->this$0:Lcom/lenovo/scg/camera/tutorial/Tutorial;

    # invokes: Lcom/lenovo/scg/camera/tutorial/Tutorial;->tutorialPageChange(I)V
    invoke-static {v0, p1}, Lcom/lenovo/scg/camera/tutorial/Tutorial;->access$100(Lcom/lenovo/scg/camera/tutorial/Tutorial;I)V

    .line 76
    return-void
.end method
