.class public Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$MaterialTypeInfo;
.super Ljava/lang/Object;
.source "MaterialMainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MaterialTypeInfo"
.end annotation


# instance fields
.field public bmp:Landroid/graphics/Bitmap;

.field public id:I

.field public sCaption:Ljava/lang/String;

.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;

.field public typeName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;)V
    .locals 0

    .prologue
    .line 546
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$MaterialTypeInfo;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
