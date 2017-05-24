.class Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity$7;
.super Ljava/lang/Object;
.source "BoxControlActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->dealwithViewEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;)V
    .locals 0

    .prologue
    .line 372
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity$7;->this$0:Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 376
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v0

    const-string v1, "category_BoxControlActivity"

    const-string v2, "action_BoxControlActivity_click_ok_button"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 378
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity$7;->this$0:Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->returnMultiRequestPic()V

    .line 379
    return-void
.end method
