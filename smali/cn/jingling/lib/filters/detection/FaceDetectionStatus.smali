.class public final enum Lcn/jingling/lib/filters/detection/FaceDetectionStatus;
.super Ljava/lang/Enum;
.source "FaceDetectionStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcn/jingling/lib/filters/detection/FaceDetectionStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcn/jingling/lib/filters/detection/FaceDetectionStatus;

.field public static final enum NEGTIVE:Lcn/jingling/lib/filters/detection/FaceDetectionStatus;

.field public static final enum POSITIVE:Lcn/jingling/lib/filters/detection/FaceDetectionStatus;

.field public static final enum UNKNOWN:Lcn/jingling/lib/filters/detection/FaceDetectionStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 7
    new-instance v0, Lcn/jingling/lib/filters/detection/FaceDetectionStatus;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcn/jingling/lib/filters/detection/FaceDetectionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/jingling/lib/filters/detection/FaceDetectionStatus;->UNKNOWN:Lcn/jingling/lib/filters/detection/FaceDetectionStatus;

    new-instance v0, Lcn/jingling/lib/filters/detection/FaceDetectionStatus;

    const-string v1, "POSITIVE"

    invoke-direct {v0, v1, v3}, Lcn/jingling/lib/filters/detection/FaceDetectionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/jingling/lib/filters/detection/FaceDetectionStatus;->POSITIVE:Lcn/jingling/lib/filters/detection/FaceDetectionStatus;

    new-instance v0, Lcn/jingling/lib/filters/detection/FaceDetectionStatus;

    const-string v1, "NEGTIVE"

    invoke-direct {v0, v1, v4}, Lcn/jingling/lib/filters/detection/FaceDetectionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/jingling/lib/filters/detection/FaceDetectionStatus;->NEGTIVE:Lcn/jingling/lib/filters/detection/FaceDetectionStatus;

    .line 6
    const/4 v0, 0x3

    new-array v0, v0, [Lcn/jingling/lib/filters/detection/FaceDetectionStatus;

    sget-object v1, Lcn/jingling/lib/filters/detection/FaceDetectionStatus;->UNKNOWN:Lcn/jingling/lib/filters/detection/FaceDetectionStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcn/jingling/lib/filters/detection/FaceDetectionStatus;->POSITIVE:Lcn/jingling/lib/filters/detection/FaceDetectionStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcn/jingling/lib/filters/detection/FaceDetectionStatus;->NEGTIVE:Lcn/jingling/lib/filters/detection/FaceDetectionStatus;

    aput-object v1, v0, v4

    sput-object v0, Lcn/jingling/lib/filters/detection/FaceDetectionStatus;->ENUM$VALUES:[Lcn/jingling/lib/filters/detection/FaceDetectionStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/jingling/lib/filters/detection/FaceDetectionStatus;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcn/jingling/lib/filters/detection/FaceDetectionStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/jingling/lib/filters/detection/FaceDetectionStatus;

    return-object v0
.end method

.method public static values()[Lcn/jingling/lib/filters/detection/FaceDetectionStatus;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcn/jingling/lib/filters/detection/FaceDetectionStatus;->ENUM$VALUES:[Lcn/jingling/lib/filters/detection/FaceDetectionStatus;

    array-length v1, v0

    new-array v2, v1, [Lcn/jingling/lib/filters/detection/FaceDetectionStatus;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
