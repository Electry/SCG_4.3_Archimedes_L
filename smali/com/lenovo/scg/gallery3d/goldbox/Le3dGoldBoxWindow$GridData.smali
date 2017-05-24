.class Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow$GridData;
.super Ljava/lang/Object;
.source "Le3dGoldBoxWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GridData"
.end annotation


# instance fields
.field icon_drawable:I

.field id:I

.field name:Ljava/lang/String;

.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;IILjava/lang/String;)V
    .locals 0
    .param p2, "id"    # I
    .param p3, "icon_drawable"    # I
    .param p4, "name"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow$GridData;->this$0:Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput p2, p0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow$GridData;->id:I

    .line 71
    iput p3, p0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow$GridData;->icon_drawable:I

    .line 72
    iput-object p4, p0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow$GridData;->name:Ljava/lang/String;

    .line 73
    return-void
.end method
