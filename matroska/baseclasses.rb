#!/usr/bin/ruby

#
# Distributed under the MIT license
# see the file COPYING for details
# or visit http://www.opensource.org/licenses/mit-license.php
#
# \$Id\$
#
# Classes for the "Matroska EBML doc type". Generated with
# gen_classes_from_xml.rb.
#
# Written by Moritz Bunkus <moritz@bunkus.org>.
#

# This file is generated automatically by the
# gen_classes_from_xml.rb script and should not be
# modified manually!

require "ebml"

module Matroska
  class EBML < Ebml::Master
    def EBML.global_id
      @@id ||= Ebml::Id.new(0x1a45dfa3, 4)
      return @@id
    end
  end

  class EBMLVersion < Ebml::UInteger
    def EBMLVersion.global_id
      @@id ||= Ebml::Id.new(0x4286, 2)
      return @@id
    end
  end

  class EBMLReadVersion < Ebml::UInteger
    def EBMLReadVersion.global_id
      @@id ||= Ebml::Id.new(0x42f7, 2)
      return @@id
    end
  end

  class EBMLMaxIDLength < Ebml::UInteger
    def EBMLMaxIDLength.global_id
      @@id ||= Ebml::Id.new(0x42f2, 2)
      return @@id
    end
  end

  class EBMLMaxSizeLength < Ebml::UInteger
    def EBMLMaxSizeLength.global_id
      @@id ||= Ebml::Id.new(0x42f3, 2)
      return @@id
    end
  end

  class DocType < Ebml::String
    def DocType.global_id
      @@id ||= Ebml::Id.new(0x4282, 2)
      return @@id
    end
  end

  class DocTypeVersion < Ebml::UInteger
    def DocTypeVersion.global_id
      @@id ||= Ebml::Id.new(0x4287, 2)
      return @@id
    end
  end

  class DocTypeReadVersion < Ebml::UInteger
    def DocTypeReadVersion.global_id
      @@id ||= Ebml::Id.new(0x4285, 2)
      return @@id
    end
  end

  class Void < Ebml::Binary
    def Void.global_id
      @@id ||= Ebml::Id.new(0xec, 1)
      return @@id
    end
  end

  class CRC_32 < Ebml::Binary
    def CRC_32.global_id
      @@id ||= Ebml::Id.new(0xbf, 1)
      return @@id
    end
  end

  class SignatureSlot < Ebml::Master
    def SignatureSlot.global_id
      @@id ||= Ebml::Id.new(0x1b538667, 4)
      return @@id
    end
  end

  class SignatureAlgo < Ebml::UInteger
    def SignatureAlgo.global_id
      @@id ||= Ebml::Id.new(0x7e8a, 2)
      return @@id
    end
  end

  class SignatureHash < Ebml::UInteger
    def SignatureHash.global_id
      @@id ||= Ebml::Id.new(0x7e9a, 2)
      return @@id
    end
  end

  class SignaturePublicKey < Ebml::Binary
    def SignaturePublicKey.global_id
      @@id ||= Ebml::Id.new(0x7ea5, 2)
      return @@id
    end
  end

  class Signature < Ebml::Binary
    def Signature.global_id
      @@id ||= Ebml::Id.new(0x7eb5, 2)
      return @@id
    end
  end

  class SignatureElements < Ebml::Master
    def SignatureElements.global_id
      @@id ||= Ebml::Id.new(0x7e5b, 2)
      return @@id
    end
  end

  class SignatureElementList < Ebml::Master
    def SignatureElementList.global_id
      @@id ||= Ebml::Id.new(0x7e7b, 2)
      return @@id
    end
  end

  class SignedElement < Ebml::Binary
    def SignedElement.global_id
      @@id ||= Ebml::Id.new(0x6532, 2)
      return @@id
    end
  end

  class Segment < Ebml::Master
    def Segment.global_id
      @@id ||= Ebml::Id.new(0x18538067, 4)
      return @@id
    end
  end

  class SeekHead < Ebml::Master
    def SeekHead.global_id
      @@id ||= Ebml::Id.new(0x114d9b74, 4)
      return @@id
    end
  end

  class Seek < Ebml::Master
    def Seek.global_id
      @@id ||= Ebml::Id.new(0x4dbb, 2)
      return @@id
    end
  end

  class SeekID < Ebml::Binary
    def SeekID.global_id
      @@id ||= Ebml::Id.new(0x53ab, 2)
      return @@id
    end
  end

  class SeekPosition < Ebml::UInteger
    def SeekPosition.global_id
      @@id ||= Ebml::Id.new(0x53ac, 2)
      return @@id
    end
  end

  class Info < Ebml::Master
    def Info.global_id
      @@id ||= Ebml::Id.new(0x1549a966, 4)
      return @@id
    end
  end

  class SegmentUID < Ebml::Binary
    def SegmentUID.global_id
      @@id ||= Ebml::Id.new(0x73a4, 2)
      return @@id
    end
  end

  class SegmentFilename < Ebml::UnicodeString
    def SegmentFilename.global_id
      @@id ||= Ebml::Id.new(0x7384, 2)
      return @@id
    end
  end

  class PrevUID < Ebml::Binary
    def PrevUID.global_id
      @@id ||= Ebml::Id.new(0x3cb923, 3)
      return @@id
    end
  end

  class PrevFilename < Ebml::UnicodeString
    def PrevFilename.global_id
      @@id ||= Ebml::Id.new(0x3c83ab, 3)
      return @@id
    end
  end

  class NextUID < Ebml::Binary
    def NextUID.global_id
      @@id ||= Ebml::Id.new(0x3eb923, 3)
      return @@id
    end
  end

  class NextFilename < Ebml::UnicodeString
    def NextFilename.global_id
      @@id ||= Ebml::Id.new(0x3e83bb, 3)
      return @@id
    end
  end

  class SegmentFamily < Ebml::Binary
    def SegmentFamily.global_id
      @@id ||= Ebml::Id.new(0x4444, 2)
      return @@id
    end
  end

  class ChapterTranslate < Ebml::Master
    def ChapterTranslate.global_id
      @@id ||= Ebml::Id.new(0x6924, 2)
      return @@id
    end
  end

  class ChapterTranslateEditionUID < Ebml::UInteger
    def ChapterTranslateEditionUID.global_id
      @@id ||= Ebml::Id.new(0x69fc, 2)
      return @@id
    end
  end

  class ChapterTranslateCodec < Ebml::UInteger
    def ChapterTranslateCodec.global_id
      @@id ||= Ebml::Id.new(0x69bf, 2)
      return @@id
    end
  end

  class ChapterTranslateID < Ebml::Binary
    def ChapterTranslateID.global_id
      @@id ||= Ebml::Id.new(0x69a5, 2)
      return @@id
    end
  end

  class TimecodeScale < Ebml::UInteger
    def TimecodeScale.global_id
      @@id ||= Ebml::Id.new(0x2ad7b1, 3)
      return @@id
    end
  end

  class Duration < Ebml::Float
    def Duration.global_id
      @@id ||= Ebml::Id.new(0x4489, 2)
      return @@id
    end
  end

  class DateUTC < Ebml::Date
    def DateUTC.global_id
      @@id ||= Ebml::Id.new(0x4461, 2)
      return @@id
    end
  end

  class Title < Ebml::UnicodeString
    def Title.global_id
      @@id ||= Ebml::Id.new(0x7ba9, 2)
      return @@id
    end
  end

  class MuxingApp < Ebml::UnicodeString
    def MuxingApp.global_id
      @@id ||= Ebml::Id.new(0x4d80, 2)
      return @@id
    end
  end

  class WritingApp < Ebml::UnicodeString
    def WritingApp.global_id
      @@id ||= Ebml::Id.new(0x5741, 2)
      return @@id
    end
  end

  class Cluster < Ebml::Master
    def Cluster.global_id
      @@id ||= Ebml::Id.new(0x1f43b675, 4)
      return @@id
    end
  end

  class Timecode < Ebml::UInteger
    def Timecode.global_id
      @@id ||= Ebml::Id.new(0xe7, 1)
      return @@id
    end
  end

  class SilentTracks < Ebml::Master
    def SilentTracks.global_id
      @@id ||= Ebml::Id.new(0x5854, 2)
      return @@id
    end
  end

  class SilentTrackNumber < Ebml::UInteger
    def SilentTrackNumber.global_id
      @@id ||= Ebml::Id.new(0x58d7, 2)
      return @@id
    end
  end

  class Position < Ebml::UInteger
    def Position.global_id
      @@id ||= Ebml::Id.new(0xa7, 1)
      return @@id
    end
  end

  class PrevSize < Ebml::UInteger
    def PrevSize.global_id
      @@id ||= Ebml::Id.new(0xab, 1)
      return @@id
    end
  end

  class SimpleBlock < Ebml::Binary
    def SimpleBlock.global_id
      @@id ||= Ebml::Id.new(0xa3, 1)
      return @@id
    end
  end

  class BlockGroup < Ebml::Master
    def BlockGroup.global_id
      @@id ||= Ebml::Id.new(0xa0, 1)
      return @@id
    end
  end

  class Block < Ebml::Binary
    def Block.global_id
      @@id ||= Ebml::Id.new(0xa1, 1)
      return @@id
    end
  end

  class BlockVirtual < Ebml::Binary
    def BlockVirtual.global_id
      @@id ||= Ebml::Id.new(0xa2, 1)
      return @@id
    end
  end

  class BlockAdditions < Ebml::Master
    def BlockAdditions.global_id
      @@id ||= Ebml::Id.new(0x75a1, 2)
      return @@id
    end
  end

  class BlockMore < Ebml::Master
    def BlockMore.global_id
      @@id ||= Ebml::Id.new(0xa6, 1)
      return @@id
    end
  end

  class BlockAddID < Ebml::UInteger
    def BlockAddID.global_id
      @@id ||= Ebml::Id.new(0xee, 1)
      return @@id
    end
  end

  class BlockAdditional < Ebml::Binary
    def BlockAdditional.global_id
      @@id ||= Ebml::Id.new(0xa5, 1)
      return @@id
    end
  end

  class BlockDuration < Ebml::UInteger
    def BlockDuration.global_id
      @@id ||= Ebml::Id.new(0x9b, 1)
      return @@id
    end
  end

  class ReferencePriority < Ebml::UInteger
    def ReferencePriority.global_id
      @@id ||= Ebml::Id.new(0xfa, 1)
      return @@id
    end
  end

  class ReferenceBlock < Ebml::SInteger
    def ReferenceBlock.global_id
      @@id ||= Ebml::Id.new(0xfb, 1)
      return @@id
    end
  end

  class ReferenceVirtual < Ebml::SInteger
    def ReferenceVirtual.global_id
      @@id ||= Ebml::Id.new(0xfd, 1)
      return @@id
    end
  end

  class CodecState < Ebml::Binary
    def CodecState.global_id
      @@id ||= Ebml::Id.new(0xa4, 1)
      return @@id
    end
  end

  class DiscardPadding < Ebml::SInteger
    def DiscardPadding.global_id
      @@id ||= Ebml::Id.new(0x75a2, 2)
      return @@id
    end
  end

  class Slices < Ebml::Master
    def Slices.global_id
      @@id ||= Ebml::Id.new(0x8e, 1)
      return @@id
    end
  end

  class TimeSlice < Ebml::Master
    def TimeSlice.global_id
      @@id ||= Ebml::Id.new(0xe8, 1)
      return @@id
    end
  end

  class LaceNumber < Ebml::UInteger
    def LaceNumber.global_id
      @@id ||= Ebml::Id.new(0xcc, 1)
      return @@id
    end
  end

  class FrameNumber < Ebml::UInteger
    def FrameNumber.global_id
      @@id ||= Ebml::Id.new(0xcd, 1)
      return @@id
    end
  end

  class BlockAdditionID < Ebml::UInteger
    def BlockAdditionID.global_id
      @@id ||= Ebml::Id.new(0xcb, 1)
      return @@id
    end
  end

  class Delay < Ebml::UInteger
    def Delay.global_id
      @@id ||= Ebml::Id.new(0xce, 1)
      return @@id
    end
  end

  class SliceDuration < Ebml::UInteger
    def SliceDuration.global_id
      @@id ||= Ebml::Id.new(0xcf, 1)
      return @@id
    end
  end

  class ReferenceFrame < Ebml::Master
    def ReferenceFrame.global_id
      @@id ||= Ebml::Id.new(0xc8, 1)
      return @@id
    end
  end

  class ReferenceOffset < Ebml::UInteger
    def ReferenceOffset.global_id
      @@id ||= Ebml::Id.new(0xc9, 1)
      return @@id
    end
  end

  class ReferenceTimeCode < Ebml::UInteger
    def ReferenceTimeCode.global_id
      @@id ||= Ebml::Id.new(0xca, 1)
      return @@id
    end
  end

  class EncryptedBlock < Ebml::Binary
    def EncryptedBlock.global_id
      @@id ||= Ebml::Id.new(0xaf, 1)
      return @@id
    end
  end

  class Tracks < Ebml::Master
    def Tracks.global_id
      @@id ||= Ebml::Id.new(0x1654ae6b, 4)
      return @@id
    end
  end

  class TrackEntry < Ebml::Master
    def TrackEntry.global_id
      @@id ||= Ebml::Id.new(0xae, 1)
      return @@id
    end
  end

  class TrackNumber < Ebml::UInteger
    def TrackNumber.global_id
      @@id ||= Ebml::Id.new(0xd7, 1)
      return @@id
    end
  end

  class TrackUID < Ebml::UInteger
    def TrackUID.global_id
      @@id ||= Ebml::Id.new(0x73c5, 2)
      return @@id
    end
  end

  class TrackType < Ebml::UInteger
    def TrackType.global_id
      @@id ||= Ebml::Id.new(0x83, 1)
      return @@id
    end
  end

  class FlagEnabled < Ebml::UInteger
    def FlagEnabled.global_id
      @@id ||= Ebml::Id.new(0xb9, 1)
      return @@id
    end
  end

  class FlagDefault < Ebml::UInteger
    def FlagDefault.global_id
      @@id ||= Ebml::Id.new(0x88, 1)
      return @@id
    end
  end

  class FlagForced < Ebml::UInteger
    def FlagForced.global_id
      @@id ||= Ebml::Id.new(0x55aa, 2)
      return @@id
    end
  end

  class FlagLacing < Ebml::UInteger
    def FlagLacing.global_id
      @@id ||= Ebml::Id.new(0x9c, 1)
      return @@id
    end
  end

  class MinCache < Ebml::UInteger
    def MinCache.global_id
      @@id ||= Ebml::Id.new(0x6de7, 2)
      return @@id
    end
  end

  class MaxCache < Ebml::UInteger
    def MaxCache.global_id
      @@id ||= Ebml::Id.new(0x6df8, 2)
      return @@id
    end
  end

  class DefaultDuration < Ebml::UInteger
    def DefaultDuration.global_id
      @@id ||= Ebml::Id.new(0x23e383, 3)
      return @@id
    end
  end

  class DefaultDecodedFieldDuration < Ebml::UInteger
    def DefaultDecodedFieldDuration.global_id
      @@id ||= Ebml::Id.new(0x234e7a, 3)
      return @@id
    end
  end

  class TrackTimecodeScale < Ebml::Float
    def TrackTimecodeScale.global_id
      @@id ||= Ebml::Id.new(0x23314f, 3)
      return @@id
    end
  end

  class TrackOffset < Ebml::SInteger
    def TrackOffset.global_id
      @@id ||= Ebml::Id.new(0x537f, 2)
      return @@id
    end
  end

  class MaxBlockAdditionID < Ebml::UInteger
    def MaxBlockAdditionID.global_id
      @@id ||= Ebml::Id.new(0x55ee, 2)
      return @@id
    end
  end

  class Name < Ebml::UnicodeString
    def Name.global_id
      @@id ||= Ebml::Id.new(0x536e, 2)
      return @@id
    end
  end

  class Language < Ebml::String
    def Language.global_id
      @@id ||= Ebml::Id.new(0x22b59c, 3)
      return @@id
    end
  end

  class CodecID < Ebml::String
    def CodecID.global_id
      @@id ||= Ebml::Id.new(0x86, 1)
      return @@id
    end
  end

  class CodecPrivate < Ebml::Binary
    def CodecPrivate.global_id
      @@id ||= Ebml::Id.new(0x63a2, 2)
      return @@id
    end
  end

  class CodecName < Ebml::UnicodeString
    def CodecName.global_id
      @@id ||= Ebml::Id.new(0x258688, 3)
      return @@id
    end
  end

  class AttachmentLink < Ebml::UInteger
    def AttachmentLink.global_id
      @@id ||= Ebml::Id.new(0x7446, 2)
      return @@id
    end
  end

  class CodecSettings < Ebml::UnicodeString
    def CodecSettings.global_id
      @@id ||= Ebml::Id.new(0x3a9697, 3)
      return @@id
    end
  end

  class CodecInfoURL < Ebml::String
    def CodecInfoURL.global_id
      @@id ||= Ebml::Id.new(0x3b4040, 3)
      return @@id
    end
  end

  class CodecDownloadURL < Ebml::String
    def CodecDownloadURL.global_id
      @@id ||= Ebml::Id.new(0x26b240, 3)
      return @@id
    end
  end

  class CodecDecodeAll < Ebml::UInteger
    def CodecDecodeAll.global_id
      @@id ||= Ebml::Id.new(0xaa, 1)
      return @@id
    end
  end

  class TrackOverlay < Ebml::UInteger
    def TrackOverlay.global_id
      @@id ||= Ebml::Id.new(0x6fab, 2)
      return @@id
    end
  end

  class CodecDelay < Ebml::UInteger
    def CodecDelay.global_id
      @@id ||= Ebml::Id.new(0x56aa, 2)
      return @@id
    end
  end

  class SeekPreRoll < Ebml::UInteger
    def SeekPreRoll.global_id
      @@id ||= Ebml::Id.new(0x56bb, 2)
      return @@id
    end
  end

  class TrackTranslate < Ebml::Master
    def TrackTranslate.global_id
      @@id ||= Ebml::Id.new(0x6624, 2)
      return @@id
    end
  end

  class TrackTranslateEditionUID < Ebml::UInteger
    def TrackTranslateEditionUID.global_id
      @@id ||= Ebml::Id.new(0x66fc, 2)
      return @@id
    end
  end

  class TrackTranslateCodec < Ebml::UInteger
    def TrackTranslateCodec.global_id
      @@id ||= Ebml::Id.new(0x66bf, 2)
      return @@id
    end
  end

  class TrackTranslateTrackID < Ebml::Binary
    def TrackTranslateTrackID.global_id
      @@id ||= Ebml::Id.new(0x66a5, 2)
      return @@id
    end
  end

  class Video < Ebml::Master
    def Video.global_id
      @@id ||= Ebml::Id.new(0xe0, 1)
      return @@id
    end
  end

  class FlagInterlaced < Ebml::UInteger
    def FlagInterlaced.global_id
      @@id ||= Ebml::Id.new(0x9a, 1)
      return @@id
    end
  end

  class StereoMode < Ebml::UInteger
    def StereoMode.global_id
      @@id ||= Ebml::Id.new(0x53b8, 2)
      return @@id
    end
  end

  class AlphaMode < Ebml::UInteger
    def AlphaMode.global_id
      @@id ||= Ebml::Id.new(0x53c0, 2)
      return @@id
    end
  end

  class OldStereoMode < Ebml::UInteger
    def OldStereoMode.global_id
      @@id ||= Ebml::Id.new(0x53b9, 2)
      return @@id
    end
  end

  class PixelWidth < Ebml::UInteger
    def PixelWidth.global_id
      @@id ||= Ebml::Id.new(0xb0, 1)
      return @@id
    end
  end

  class PixelHeight < Ebml::UInteger
    def PixelHeight.global_id
      @@id ||= Ebml::Id.new(0xba, 1)
      return @@id
    end
  end

  class PixelCropBottom < Ebml::UInteger
    def PixelCropBottom.global_id
      @@id ||= Ebml::Id.new(0x54aa, 2)
      return @@id
    end
  end

  class PixelCropTop < Ebml::UInteger
    def PixelCropTop.global_id
      @@id ||= Ebml::Id.new(0x54bb, 2)
      return @@id
    end
  end

  class PixelCropLeft < Ebml::UInteger
    def PixelCropLeft.global_id
      @@id ||= Ebml::Id.new(0x54cc, 2)
      return @@id
    end
  end

  class PixelCropRight < Ebml::UInteger
    def PixelCropRight.global_id
      @@id ||= Ebml::Id.new(0x54dd, 2)
      return @@id
    end
  end

  class DisplayWidth < Ebml::UInteger
    def DisplayWidth.global_id
      @@id ||= Ebml::Id.new(0x54b0, 2)
      return @@id
    end
  end

  class DisplayHeight < Ebml::UInteger
    def DisplayHeight.global_id
      @@id ||= Ebml::Id.new(0x54ba, 2)
      return @@id
    end
  end

  class DisplayUnit < Ebml::UInteger
    def DisplayUnit.global_id
      @@id ||= Ebml::Id.new(0x54b2, 2)
      return @@id
    end
  end

  class AspectRatioType < Ebml::UInteger
    def AspectRatioType.global_id
      @@id ||= Ebml::Id.new(0x54b3, 2)
      return @@id
    end
  end

  class ColourSpace < Ebml::Binary
    def ColourSpace.global_id
      @@id ||= Ebml::Id.new(0x2eb524, 3)
      return @@id
    end
  end

  class GammaValue < Ebml::Float
    def GammaValue.global_id
      @@id ||= Ebml::Id.new(0x2fb523, 3)
      return @@id
    end
  end

  class FrameRate < Ebml::Float
    def FrameRate.global_id
      @@id ||= Ebml::Id.new(0x2383e3, 3)
      return @@id
    end
  end

  class Audio < Ebml::Master
    def Audio.global_id
      @@id ||= Ebml::Id.new(0xe1, 1)
      return @@id
    end
  end

  class SamplingFrequency < Ebml::Float
    def SamplingFrequency.global_id
      @@id ||= Ebml::Id.new(0xb5, 1)
      return @@id
    end
  end

  class OutputSamplingFrequency < Ebml::Float
    def OutputSamplingFrequency.global_id
      @@id ||= Ebml::Id.new(0x78b5, 2)
      return @@id
    end
  end

  class Channels < Ebml::UInteger
    def Channels.global_id
      @@id ||= Ebml::Id.new(0x9f, 1)
      return @@id
    end
  end

  class ChannelPositions < Ebml::Binary
    def ChannelPositions.global_id
      @@id ||= Ebml::Id.new(0x7d7b, 2)
      return @@id
    end
  end

  class BitDepth < Ebml::UInteger
    def BitDepth.global_id
      @@id ||= Ebml::Id.new(0x6264, 2)
      return @@id
    end
  end

  class TrackOperation < Ebml::Master
    def TrackOperation.global_id
      @@id ||= Ebml::Id.new(0xe2, 1)
      return @@id
    end
  end

  class TrackCombinePlanes < Ebml::Master
    def TrackCombinePlanes.global_id
      @@id ||= Ebml::Id.new(0xe3, 1)
      return @@id
    end
  end

  class TrackPlane < Ebml::Master
    def TrackPlane.global_id
      @@id ||= Ebml::Id.new(0xe4, 1)
      return @@id
    end
  end

  class TrackPlaneUID < Ebml::UInteger
    def TrackPlaneUID.global_id
      @@id ||= Ebml::Id.new(0xe5, 1)
      return @@id
    end
  end

  class TrackPlaneType < Ebml::UInteger
    def TrackPlaneType.global_id
      @@id ||= Ebml::Id.new(0xe6, 1)
      return @@id
    end
  end

  class TrackJoinBlocks < Ebml::Master
    def TrackJoinBlocks.global_id
      @@id ||= Ebml::Id.new(0xe9, 1)
      return @@id
    end
  end

  class TrackJoinUID < Ebml::UInteger
    def TrackJoinUID.global_id
      @@id ||= Ebml::Id.new(0xed, 1)
      return @@id
    end
  end

  class TrickTrackUID < Ebml::UInteger
    def TrickTrackUID.global_id
      @@id ||= Ebml::Id.new(0xc0, 1)
      return @@id
    end
  end

  class TrickTrackSegmentUID < Ebml::Binary
    def TrickTrackSegmentUID.global_id
      @@id ||= Ebml::Id.new(0xc1, 1)
      return @@id
    end
  end

  class TrickTrackFlag < Ebml::UInteger
    def TrickTrackFlag.global_id
      @@id ||= Ebml::Id.new(0xc6, 1)
      return @@id
    end
  end

  class TrickMasterTrackUID < Ebml::UInteger
    def TrickMasterTrackUID.global_id
      @@id ||= Ebml::Id.new(0xc7, 1)
      return @@id
    end
  end

  class TrickMasterTrackSegmentUID < Ebml::Binary
    def TrickMasterTrackSegmentUID.global_id
      @@id ||= Ebml::Id.new(0xc4, 1)
      return @@id
    end
  end

  class ContentEncodings < Ebml::Master
    def ContentEncodings.global_id
      @@id ||= Ebml::Id.new(0x6d80, 2)
      return @@id
    end
  end

  class ContentEncoding < Ebml::Master
    def ContentEncoding.global_id
      @@id ||= Ebml::Id.new(0x6240, 2)
      return @@id
    end
  end

  class ContentEncodingOrder < Ebml::UInteger
    def ContentEncodingOrder.global_id
      @@id ||= Ebml::Id.new(0x5031, 2)
      return @@id
    end
  end

  class ContentEncodingScope < Ebml::UInteger
    def ContentEncodingScope.global_id
      @@id ||= Ebml::Id.new(0x5032, 2)
      return @@id
    end
  end

  class ContentEncodingType < Ebml::UInteger
    def ContentEncodingType.global_id
      @@id ||= Ebml::Id.new(0x5033, 2)
      return @@id
    end
  end

  class ContentCompression < Ebml::Master
    def ContentCompression.global_id
      @@id ||= Ebml::Id.new(0x5034, 2)
      return @@id
    end
  end

  class ContentCompAlgo < Ebml::UInteger
    def ContentCompAlgo.global_id
      @@id ||= Ebml::Id.new(0x4254, 2)
      return @@id
    end
  end

  class ContentCompSettings < Ebml::Binary
    def ContentCompSettings.global_id
      @@id ||= Ebml::Id.new(0x4255, 2)
      return @@id
    end
  end

  class ContentEncryption < Ebml::Master
    def ContentEncryption.global_id
      @@id ||= Ebml::Id.new(0x5035, 2)
      return @@id
    end
  end

  class ContentEncAlgo < Ebml::UInteger
    def ContentEncAlgo.global_id
      @@id ||= Ebml::Id.new(0x47e1, 2)
      return @@id
    end
  end

  class ContentEncKeyID < Ebml::Binary
    def ContentEncKeyID.global_id
      @@id ||= Ebml::Id.new(0x47e2, 2)
      return @@id
    end
  end

  class ContentSignature < Ebml::Binary
    def ContentSignature.global_id
      @@id ||= Ebml::Id.new(0x47e3, 2)
      return @@id
    end
  end

  class ContentSigKeyID < Ebml::Binary
    def ContentSigKeyID.global_id
      @@id ||= Ebml::Id.new(0x47e4, 2)
      return @@id
    end
  end

  class ContentSigAlgo < Ebml::UInteger
    def ContentSigAlgo.global_id
      @@id ||= Ebml::Id.new(0x47e5, 2)
      return @@id
    end
  end

  class ContentSigHashAlgo < Ebml::UInteger
    def ContentSigHashAlgo.global_id
      @@id ||= Ebml::Id.new(0x47e6, 2)
      return @@id
    end
  end

  class Cues < Ebml::Master
    def Cues.global_id
      @@id ||= Ebml::Id.new(0x1c53bb6b, 4)
      return @@id
    end
  end

  class CuePoint < Ebml::Master
    def CuePoint.global_id
      @@id ||= Ebml::Id.new(0xbb, 1)
      return @@id
    end
  end

  class CueTime < Ebml::UInteger
    def CueTime.global_id
      @@id ||= Ebml::Id.new(0xb3, 1)
      return @@id
    end
  end

  class CueTrackPositions < Ebml::Master
    def CueTrackPositions.global_id
      @@id ||= Ebml::Id.new(0xb7, 1)
      return @@id
    end
  end

  class CueTrack < Ebml::UInteger
    def CueTrack.global_id
      @@id ||= Ebml::Id.new(0xf7, 1)
      return @@id
    end
  end

  class CueClusterPosition < Ebml::UInteger
    def CueClusterPosition.global_id
      @@id ||= Ebml::Id.new(0xf1, 1)
      return @@id
    end
  end

  class CueRelativePosition < Ebml::UInteger
    def CueRelativePosition.global_id
      @@id ||= Ebml::Id.new(0xf0, 1)
      return @@id
    end
  end

  class CueDuration < Ebml::UInteger
    def CueDuration.global_id
      @@id ||= Ebml::Id.new(0xb2, 1)
      return @@id
    end
  end

  class CueBlockNumber < Ebml::UInteger
    def CueBlockNumber.global_id
      @@id ||= Ebml::Id.new(0x5378, 2)
      return @@id
    end
  end

  class CueCodecState < Ebml::UInteger
    def CueCodecState.global_id
      @@id ||= Ebml::Id.new(0xea, 1)
      return @@id
    end
  end

  class CueReference < Ebml::Master
    def CueReference.global_id
      @@id ||= Ebml::Id.new(0xdb, 1)
      return @@id
    end
  end

  class CueRefTime < Ebml::UInteger
    def CueRefTime.global_id
      @@id ||= Ebml::Id.new(0x96, 1)
      return @@id
    end
  end

  class CueRefCluster < Ebml::UInteger
    def CueRefCluster.global_id
      @@id ||= Ebml::Id.new(0x97, 1)
      return @@id
    end
  end

  class CueRefNumber < Ebml::UInteger
    def CueRefNumber.global_id
      @@id ||= Ebml::Id.new(0x535f, 2)
      return @@id
    end
  end

  class CueRefCodecState < Ebml::UInteger
    def CueRefCodecState.global_id
      @@id ||= Ebml::Id.new(0xeb, 1)
      return @@id
    end
  end

  class Attachments < Ebml::Master
    def Attachments.global_id
      @@id ||= Ebml::Id.new(0x1941a469, 4)
      return @@id
    end
  end

  class AttachedFile < Ebml::Master
    def AttachedFile.global_id
      @@id ||= Ebml::Id.new(0x61a7, 2)
      return @@id
    end
  end

  class FileDescription < Ebml::UnicodeString
    def FileDescription.global_id
      @@id ||= Ebml::Id.new(0x467e, 2)
      return @@id
    end
  end

  class FileName < Ebml::UnicodeString
    def FileName.global_id
      @@id ||= Ebml::Id.new(0x466e, 2)
      return @@id
    end
  end

  class FileMimeType < Ebml::String
    def FileMimeType.global_id
      @@id ||= Ebml::Id.new(0x4660, 2)
      return @@id
    end
  end

  class FileData < Ebml::Binary
    def FileData.global_id
      @@id ||= Ebml::Id.new(0x465c, 2)
      return @@id
    end
  end

  class FileUID < Ebml::UInteger
    def FileUID.global_id
      @@id ||= Ebml::Id.new(0x46ae, 2)
      return @@id
    end
  end

  class FileReferral < Ebml::Binary
    def FileReferral.global_id
      @@id ||= Ebml::Id.new(0x4675, 2)
      return @@id
    end
  end

  class FileUsedStartTime < Ebml::UInteger
    def FileUsedStartTime.global_id
      @@id ||= Ebml::Id.new(0x4661, 2)
      return @@id
    end
  end

  class FileUsedEndTime < Ebml::UInteger
    def FileUsedEndTime.global_id
      @@id ||= Ebml::Id.new(0x4662, 2)
      return @@id
    end
  end

  class Chapters < Ebml::Master
    def Chapters.global_id
      @@id ||= Ebml::Id.new(0x1043a770, 4)
      return @@id
    end
  end

  class EditionEntry < Ebml::Master
    def EditionEntry.global_id
      @@id ||= Ebml::Id.new(0x45b9, 2)
      return @@id
    end
  end

  class EditionUID < Ebml::UInteger
    def EditionUID.global_id
      @@id ||= Ebml::Id.new(0x45bc, 2)
      return @@id
    end
  end

  class EditionFlagHidden < Ebml::UInteger
    def EditionFlagHidden.global_id
      @@id ||= Ebml::Id.new(0x45bd, 2)
      return @@id
    end
  end

  class EditionFlagDefault < Ebml::UInteger
    def EditionFlagDefault.global_id
      @@id ||= Ebml::Id.new(0x45db, 2)
      return @@id
    end
  end

  class EditionFlagOrdered < Ebml::UInteger
    def EditionFlagOrdered.global_id
      @@id ||= Ebml::Id.new(0x45dd, 2)
      return @@id
    end
  end

  class ChapterAtom < Ebml::Master
    def ChapterAtom.global_id
      @@id ||= Ebml::Id.new(0xb6, 1)
      return @@id
    end
  end

  class ChapterUID < Ebml::UInteger
    def ChapterUID.global_id
      @@id ||= Ebml::Id.new(0x73c4, 2)
      return @@id
    end
  end

  class ChapterStringUID < Ebml::UnicodeString
    def ChapterStringUID.global_id
      @@id ||= Ebml::Id.new(0x5654, 2)
      return @@id
    end
  end

  class ChapterTimeStart < Ebml::UInteger
    def ChapterTimeStart.global_id
      @@id ||= Ebml::Id.new(0x91, 1)
      return @@id
    end
  end

  class ChapterTimeEnd < Ebml::UInteger
    def ChapterTimeEnd.global_id
      @@id ||= Ebml::Id.new(0x92, 1)
      return @@id
    end
  end

  class ChapterFlagHidden < Ebml::UInteger
    def ChapterFlagHidden.global_id
      @@id ||= Ebml::Id.new(0x98, 1)
      return @@id
    end
  end

  class ChapterFlagEnabled < Ebml::UInteger
    def ChapterFlagEnabled.global_id
      @@id ||= Ebml::Id.new(0x4598, 2)
      return @@id
    end
  end

  class ChapterSegmentUID < Ebml::Binary
    def ChapterSegmentUID.global_id
      @@id ||= Ebml::Id.new(0x6e67, 2)
      return @@id
    end
  end

  class ChapterSegmentEditionUID < Ebml::UInteger
    def ChapterSegmentEditionUID.global_id
      @@id ||= Ebml::Id.new(0x6ebc, 2)
      return @@id
    end
  end

  class ChapterPhysicalEquiv < Ebml::UInteger
    def ChapterPhysicalEquiv.global_id
      @@id ||= Ebml::Id.new(0x63c3, 2)
      return @@id
    end
  end

  class ChapterTrack < Ebml::Master
    def ChapterTrack.global_id
      @@id ||= Ebml::Id.new(0x8f, 1)
      return @@id
    end
  end

  class ChapterTrackNumber < Ebml::UInteger
    def ChapterTrackNumber.global_id
      @@id ||= Ebml::Id.new(0x89, 1)
      return @@id
    end
  end

  class ChapterDisplay < Ebml::Master
    def ChapterDisplay.global_id
      @@id ||= Ebml::Id.new(0x80, 1)
      return @@id
    end
  end

  class ChapString < Ebml::UnicodeString
    def ChapString.global_id
      @@id ||= Ebml::Id.new(0x85, 1)
      return @@id
    end
  end

  class ChapLanguage < Ebml::String
    def ChapLanguage.global_id
      @@id ||= Ebml::Id.new(0x437c, 2)
      return @@id
    end
  end

  class ChapCountry < Ebml::String
    def ChapCountry.global_id
      @@id ||= Ebml::Id.new(0x437e, 2)
      return @@id
    end
  end

  class ChapProcess < Ebml::Master
    def ChapProcess.global_id
      @@id ||= Ebml::Id.new(0x6944, 2)
      return @@id
    end
  end

  class ChapProcessCodecID < Ebml::UInteger
    def ChapProcessCodecID.global_id
      @@id ||= Ebml::Id.new(0x6955, 2)
      return @@id
    end
  end

  class ChapProcessPrivate < Ebml::Binary
    def ChapProcessPrivate.global_id
      @@id ||= Ebml::Id.new(0x450d, 2)
      return @@id
    end
  end

  class ChapProcessCommand < Ebml::Master
    def ChapProcessCommand.global_id
      @@id ||= Ebml::Id.new(0x6911, 2)
      return @@id
    end
  end

  class ChapProcessTime < Ebml::UInteger
    def ChapProcessTime.global_id
      @@id ||= Ebml::Id.new(0x6922, 2)
      return @@id
    end
  end

  class ChapProcessData < Ebml::Binary
    def ChapProcessData.global_id
      @@id ||= Ebml::Id.new(0x6933, 2)
      return @@id
    end
  end

  class Tags < Ebml::Master
    def Tags.global_id
      @@id ||= Ebml::Id.new(0x1254c367, 4)
      return @@id
    end
  end

  class Tag < Ebml::Master
    def Tag.global_id
      @@id ||= Ebml::Id.new(0x7373, 2)
      return @@id
    end
  end

  class Targets < Ebml::Master
    def Targets.global_id
      @@id ||= Ebml::Id.new(0x63c0, 2)
      return @@id
    end
  end

  class TargetTypeValue < Ebml::UInteger
    def TargetTypeValue.global_id
      @@id ||= Ebml::Id.new(0x68ca, 2)
      return @@id
    end
  end

  class TargetType < Ebml::String
    def TargetType.global_id
      @@id ||= Ebml::Id.new(0x63ca, 2)
      return @@id
    end
  end

  class TagTrackUID < Ebml::UInteger
    def TagTrackUID.global_id
      @@id ||= Ebml::Id.new(0x63c5, 2)
      return @@id
    end
  end

  class TagEditionUID < Ebml::UInteger
    def TagEditionUID.global_id
      @@id ||= Ebml::Id.new(0x63c9, 2)
      return @@id
    end
  end

  class TagChapterUID < Ebml::UInteger
    def TagChapterUID.global_id
      @@id ||= Ebml::Id.new(0x63c4, 2)
      return @@id
    end
  end

  class TagAttachmentUID < Ebml::UInteger
    def TagAttachmentUID.global_id
      @@id ||= Ebml::Id.new(0x63c6, 2)
      return @@id
    end
  end

  class SimpleTag < Ebml::Master
    def SimpleTag.global_id
      @@id ||= Ebml::Id.new(0x67c8, 2)
      return @@id
    end
  end

  class TagName < Ebml::UnicodeString
    def TagName.global_id
      @@id ||= Ebml::Id.new(0x45a3, 2)
      return @@id
    end
  end

  class TagLanguage < Ebml::String
    def TagLanguage.global_id
      @@id ||= Ebml::Id.new(0x447a, 2)
      return @@id
    end
  end

  class TagDefault < Ebml::UInteger
    def TagDefault.global_id
      @@id ||= Ebml::Id.new(0x4484, 2)
      return @@id
    end
  end

  class TagString < Ebml::UnicodeString
    def TagString.global_id
      @@id ||= Ebml::Id.new(0x4487, 2)
      return @@id
    end
  end

  class TagBinary < Ebml::Binary
    def TagBinary.global_id
      @@id ||= Ebml::Id.new(0x4485, 2)
      return @@id
    end
  end

end
