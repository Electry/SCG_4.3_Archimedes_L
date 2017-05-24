.class public Lcom/lenovo/scg/gallery3d/gadget/WidgetService;
.super Landroid/widget/RemoteViewsService;
.source "WidgetService.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/gadget/WidgetService$PhotoRVFactory;
    }
.end annotation


# static fields
.field public static final EXTRA_ALBUM_PATH:Ljava/lang/String; = "album-path"

.field public static final EXTRA_WIDGET_TYPE:Ljava/lang/String; = "widget-type"

.field private static final TAG:Ljava/lang/String; = "GalleryAppWidgetService"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/widget/RemoteViewsService;-><init>()V

    .line 51
    return-void
.end method


# virtual methods
.method public onGetViewFactory(Landroid/content/Intent;)Landroid/widget/RemoteViewsService$RemoteViewsFactory;
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 44
    const-string v3, "appWidgetId"

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 45
    .local v1, "id":I
    const-string/jumbo v3, "widget-type"

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 46
    .local v2, "type":I
    const-string v3, "album-path"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, "albumPath":Ljava/lang/String;
    new-instance v4, Lcom/lenovo/scg/gallery3d/gadget/WidgetService$PhotoRVFactory;

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/gadget/WidgetService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    invoke-direct {v4, v3, v1, v2, v0}, Lcom/lenovo/scg/gallery3d/gadget/WidgetService$PhotoRVFactory;-><init>(Lcom/lenovo/scg/gallery3d/app/GalleryApp;IILjava/lang/String;)V

    return-object v4
.end method