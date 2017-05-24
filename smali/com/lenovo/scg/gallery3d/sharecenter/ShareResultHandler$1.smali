.class Lcom/lenovo/scg/gallery3d/sharecenter/ShareResultHandler$1;
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
    .line 124
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareResultHandler$1;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/ShareResultHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 128
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareResultHandler$1;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/ShareResultHandler;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/ShareResultHandler;->mContext:Landroid/app/Activity;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareResultHandler;->access$000(Lcom/lenovo/scg/gallery3d/sharecenter/ShareResultHandler;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 129
    return-void
.end method
