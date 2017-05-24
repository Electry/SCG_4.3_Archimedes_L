.class public Lcom/lenovo/scg/camera/CameraResources;
.super Ljava/lang/Object;
.source "CameraResources.java"


# static fields
.field public static final RES_SHOOTING_FIGURE:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 81
    new-instance v0, Lcom/lenovo/scg/camera/CameraResources$1;

    invoke-direct {v0}, Lcom/lenovo/scg/camera/CameraResources$1;-><init>()V

    sput-object v0, Lcom/lenovo/scg/camera/CameraResources;->RES_SHOOTING_FIGURE:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
