.class public Lcom/lenovo/scg/gallery3d/app/PackagesMonitor$AsyncService;
.super Landroid/app/IntentService;
.source "PackagesMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/app/PackagesMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AsyncService"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    const-string v0, "GalleryPackagesMonitorAsync"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 48
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 52
    # invokes: Lcom/lenovo/scg/gallery3d/app/PackagesMonitor;->onReceiveAsync(Landroid/content/Context;Landroid/content/Intent;)V
    invoke-static {p0, p1}, Lcom/lenovo/scg/gallery3d/app/PackagesMonitor;->access$000(Landroid/content/Context;Landroid/content/Intent;)V

    .line 53
    return-void
.end method
