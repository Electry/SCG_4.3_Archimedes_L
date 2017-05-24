.class Lcom/lenovo/scg/gallery3d/sharecenter/ShareResultHandler$2;
.super Ljava/lang/Object;
.source "ShareResultHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/sharecenter/ShareResultHandler;->showResults()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/sharecenter/ShareResultHandler;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/sharecenter/ShareResultHandler;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareResultHandler$2;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/ShareResultHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 142
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareResultHandler$2;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/ShareResultHandler;

    # invokes: Lcom/lenovo/scg/gallery3d/sharecenter/ShareResultHandler;->retry()V
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareResultHandler;->access$100(Lcom/lenovo/scg/gallery3d/sharecenter/ShareResultHandler;)V

    .line 143
    return-void
.end method
